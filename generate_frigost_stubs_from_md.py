#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import re
import sys
import time
from urllib.parse import urljoin, urlparse

import requests
from bs4 import BeautifulSoup

BASE = "https://doc.frigost.dev/"
ROOT_METHODS = "abonnement-frigost-bot/methodes/"
ROOT_FIGHT_OBJECTS = "abonnement-frigost-bot/ia-avancee-de-combat/objets"
ROOT_FIGHT_METHODS = "abonnement-frigost-bot/ia-avancee-de-combat/methodes/"

UA = "frigost-lua-stub-generator/2.2 (md+cache+enum+continuations)"
SLEEP = 0.01

OUT_FILE = "frigost_api_from_md.lua"

# Local markdown cache
CACHE_DIR = "markdown"
FORCE_REFRESH = False  # set True to redownload everything

# --------------------------------------------------
# Utils
# --------------------------------------------------

def log(msg: str):
    print(msg, flush=True)

def fetch(url: str) -> str:
    log(f"[FETCH] {url}")
    r = requests.get(url, headers={"User-Agent": UA}, timeout=30)
    r.raise_for_status()
    return r.text

def soupify(html: str) -> BeautifulSoup:
    return BeautifulSoup(html, "html.parser")

def norm_space(s: str) -> str:
    return re.sub(r"\s+", " ", s or "").strip()

def is_same_site(url: str) -> bool:
    return urlparse(url).netloc in ("doc.frigost.dev", "")

def md_to_text(s: str) -> str:
    """
    GitBook MD tables often contain embedded HTML like <ul><li> and <br>.
    We convert those to readable text.
    """
    s = s or ""
    s = s.replace("<br>", "\n").replace("<br/>", "\n").replace("<br />", "\n")
    return BeautifulSoup(s, "html.parser").get_text(" ").strip()

def strip_md_links(s: str) -> str:
    # "text [label](url) text" -> "text label text"
    return re.sub(r"\[([^\]]+)\]\([^)]+\)", r"\1", s or "")

# --------------------------------------------------
# Crawling (HTML discovery only)
# --------------------------------------------------

def discover_links(start_url: str, allow_prefix: str) -> list[str]:
    log(f"\n[CRAWL] Starting discovery: {start_url}")
    seen = set()
    q = [start_url]
    out = []

    while q:
        url = q.pop(0)
        if url in seen:
            continue
        seen.add(url)

        try:
            html = fetch(url)
        except Exception as e:
            log(f"[ERROR] Failed to fetch {url} -> {e}")
            continue

        out.append(url)
        soup = soupify(html)

        for a in soup.select("a[href]"):
            href = a.get("href") or ""
            if href.startswith("#") or href.startswith("mailto:"):
                continue

            absu = urljoin(url, href)
            if not is_same_site(absu):
                continue

            path = urlparse(absu).path.lstrip("/")
            if not path.startswith(allow_prefix):
                continue

            if absu not in seen:
                q.append(absu)

        log(f"[CRAWL] Discovered pages: {len(out)}")
        time.sleep(SLEEP)

    log(f"[CRAWL DONE] Total pages under '{allow_prefix}': {len(out)}\n")
    return sorted(set(out))

# --------------------------------------------------
# Markdown cache + fetching strategy
# --------------------------------------------------

def candidate_md_urls(page_url: str) -> list[str]:
    """
    GitBook often exposes:
      - /path/to/page.md
      - /path/to/page/README.md
    We try a few candidates in order.
    """
    u = page_url.split("#", 1)[0]
    u = u.split("?", 1)[0]

    cands = []
    if u.endswith(".md"):
        cands.append(u)

    if u.endswith("/"):
        cands.append(u[:-1] + ".md")
        cands.append(u + "README.md")
    else:
        cands.append(u + ".md")
        cands.append(u + "/README.md")

    # dedupe preserve order
    out = []
    seen = set()
    for x in cands:
        if x not in seen:
            seen.add(x)
            out.append(x)
    return out

def md_cache_path(md_url: str) -> str:
    """
    Convert:
      https://doc.frigost.dev/a/b/c.md
    into:
      markdown/a/b/c.md
    """
    path = urlparse(md_url).path.lstrip("/")
    return os.path.join(CACHE_DIR, path)

def fetch_md_for_page(page_url: str) -> tuple[str | None, str | None]:
    """
    Returns (md_text, md_url_used)

    Strategy per candidate md url:
      1) Use local cache if present (unless FORCE_REFRESH)
      2) Otherwise download and cache
    """
    for md_url in candidate_md_urls(page_url):
        cache_path = md_cache_path(md_url)

        # 1) Cache hit
        if not FORCE_REFRESH and os.path.exists(cache_path):
            try:
                with open(cache_path, "r", encoding="utf-8") as f:
                    log(f"[CACHE] {cache_path}")
                    return f.read(), md_url
            except Exception as e:
                log(f"[WARN] Failed to read cache {cache_path}: {e}")

        # 2) Download + cache
        try:
            md = fetch(md_url)
            os.makedirs(os.path.dirname(cache_path), exist_ok=True)
            with open(cache_path, "w", encoding="utf-8") as f:
                f.write(md)
            log(f"[CACHED] {cache_path}")
            return md, md_url
        except Exception:
            continue

    log(f"[WARN] No MD found for {page_url}")
    return None, None

# --------------------------------------------------
# Markdown parsing helpers
# --------------------------------------------------

def extract_title_h1(md: str) -> str:
    m = re.search(r"^\s*#\s+(.+?)\s*$", md, flags=re.M)
    return m.group(1).strip() if m else ""

def extract_hint_description(md: str) -> str:
    """
    {% hint style="success" %} ... {% endhint %}
    We'll take the first hint block as description.
    """
    m = re.search(r"{%\s*hint[^%]*%}(.*?){%\s*endhint\s*%}", md, flags=re.S)
    if not m:
        return ""
    return norm_space(strip_md_links(md_to_text(m.group(1))))

def extract_section(md: str, heading: str) -> str:
    """
    Extract content after an exact heading line until next '## ' heading or EOF.
    """
    pat = re.escape(heading) + r"\s*(.*?)(?=^\s*##\s+|\Z)"
    m = re.search(pat, md, flags=re.S | re.M)
    return m.group(1).strip() if m else ""

def extract_first_fenced_code(block: str, lang: str | None = None) -> str | None:
    if not block:
        return None
    if lang:
        m = re.search(rf"```{re.escape(lang)}\s*(.*?)```", block, flags=re.S)
        if m:
            return m.group(1).strip()
    m = re.search(r"```[a-zA-Z0-9_-]*\s*(.*?)```", block, flags=re.S)
    return m.group(1).strip() if m else None

def parse_md_table_lines(tbl_lines: list[str]) -> list[list[str]]:
    rows = []
    for ln in tbl_lines:
        parts = [p.strip() for p in ln.strip().strip("|").split("|")]
        rows.append([md_to_text(p) for p in parts])

    cleaned = []
    for r in rows:
        def is_sep_cell(c: str) -> bool:
            c2 = c.replace(" ", "")
            return bool(re.fullmatch(r":?-{3,}:?", c2))
        if r and all(is_sep_cell(c) for c in r):
            continue
        cleaned.append(r)
    return cleaned

def extract_first_md_table(block: str) -> list[list[str]] | None:
    if not block:
        return None
    lines = [ln.rstrip() for ln in block.splitlines()]
    for i in range(len(lines)):
        if lines[i].lstrip().startswith("|"):
            tbl = []
            j = i
            while j < len(lines) and lines[j].lstrip().startswith("|"):
                tbl.append(lines[j])
                j += 1
            if len(tbl) >= 2:
                return parse_md_table_lines(tbl)
    return None

def parse_html_tables(html: str) -> list[list[list[str]]]:
    if not html:
        return []
    soup = BeautifulSoup(html, "html.parser")
    tables = []
    for table in soup.find_all("table"):
        rows = []
        for tr in table.find_all("tr"):
            cells = tr.find_all(["th", "td"])
            if not cells:
                continue
            row = [norm_space(c.get_text(" ")) for c in cells]
            rows.append(row)
        if rows:
            tables.append(rows)
    return tables

def extract_proto_from_md(md: str) -> str | None:
    block = extract_section(md, "## 🔍 Prototype")
    code = extract_first_fenced_code(block, "lua")
    if not code:
        return None
    return norm_space(code)

def is_optional_cell(type_cell: str) -> bool:
    t = (type_cell or "").lower()
    return (
        "facultatif" in t
        or "optional" in t
        or "par défaut" in t
        or "default" in t
        or "optionnel" in t
    )

def lua_type(t: str) -> str:
    t = (t or "").lower()
    if "string" in t:
        return "string"
    if "int" in t or "entier" in t or "integer" in t:
        return "integer"
    if "bool" in t or "boolean" in t:
        return "boolean"
    if "float" in t or "double" in t or "number" in t or "nombre" in t:
        return "number"
    if "enum" in t:
        return "integer"  # enums map nicely to integer for stubs
    if "list" in t or "table" in t or "array" in t:
        return "any[]"
    return "any"

def extract_enum_values(text: str) -> list[str]:
    """
    Extract console.xxx style enum candidates from a blob of text.
    """
    if not text:
        return []
    values = re.findall(r"\bconsole\.[A-Za-z_]+\b", text)
    return sorted(set(values))

def parse_params_from_md(md: str) -> list[dict]:
    """
    Returns list of dict: { name, raw_type, desc, optional }
    Handles GitBook continuation rows (name empty) by merging into previous param.
    """
    block = extract_section(md, "## 📝 Paramètres")
    tbl = extract_first_md_table(block)
    if not tbl or len(tbl) < 2:
        return []

    header = [c.lower() for c in tbl[0]]

    def find_col(keys):
        for k in keys:
            for idx, h in enumerate(header):
                if k in h:
                    return idx
        return None

    c_name = find_col(["param", "argument", "name"])
    c_type = find_col(["type"])
    c_desc = find_col(["desc", "description"])

    params = []
    current = None

    for row in tbl[1:]:
        if not row:
            continue

        name = row[c_name].strip() if c_name is not None and c_name < len(row) else ""
        typ  = row[c_type].strip() if c_type is not None and c_type < len(row) else ""
        desc = row[c_desc].strip() if c_desc is not None and c_desc < len(row) else ""

        # Continuation row
        if not name and current:
            if typ:
                current["raw_type"] += " " + typ
            if desc:
                current["desc"] += " " + desc
            continue

        # New param row
        current = {
            "name": name,
            "raw_type": typ,
            "desc": desc,
            "optional": is_optional_cell(typ),
        }
        if current["name"]:
            params.append(current)

    for p in params:
        p["raw_type"] = norm_space(p["raw_type"])
        p["desc"] = norm_space(strip_md_links(p["desc"]))

    return params

def parse_returns_from_md(md: str) -> list[tuple[str, str]]:
    block = extract_section(md, "## 🔙 Retour")
    tbl = extract_first_md_table(block)
    if not tbl or len(tbl) < 2:
        return []

    header = [c.lower() for c in tbl[0]]

    def find_col(keys):
        for k in keys:
            for idx, h in enumerate(header):
                if k in h:
                    return idx
        return None

    c_type = find_col(["type"])
    c_desc = find_col(["desc", "description"])

    out = []
    for row in tbl[1:]:
        if not row:
            continue
        typ = row[c_type].strip() if c_type is not None and c_type < len(row) else (row[0].strip() if row else "")
        desc = row[c_desc].strip() if c_desc is not None and c_desc < len(row) else ""
        if typ or desc:
            out.append((typ or "any", norm_space(strip_md_links(desc))))
    return out

def parse_object_fields_from_md(md: str) -> list[tuple[str, str]]:
    """
    For object pages: find a table with header containing 'membre' (FR) or 'member'.
    Fields as (name, lua_type).
    """
    lines = md.splitlines()
    tables = []

    i = 0
    while i < len(lines):
        if lines[i].lstrip().startswith("|"):
            tbl_lines = []
            while i < len(lines) and lines[i].lstrip().startswith("|"):
                tbl_lines.append(lines[i])
                i += 1
            if len(tbl_lines) >= 2:
                tables.append(parse_md_table_lines(tbl_lines))
            continue
        i += 1

    if not tables:
        tables = parse_html_tables(md)

    for t in tables:
        if not t or len(t) < 2:
            continue
        header = [c.lower() for c in t[0]]
        if any("membre" in h or "member" in h for h in header):
            fields = []
            for row in t[1:]:
                if len(row) >= 2:
                    fname = md_to_text(row[0]).strip()
                    ftyp = md_to_text(row[1]).strip()
                    if fname:
                        fields.append((fname, lua_type(ftyp)))
            return fields

    return []

# --------------------------------------------------
# Alias naming
# --------------------------------------------------

def make_alias_name(ns: str, param_name: str) -> str:
    if ns.lower() == "console" and param_name.lower() == "color":
        return "FrigostConsoleColor"
    ns_part = ns[:1].upper() + ns[1:]
    p_part = param_name[:1].upper() + param_name[1:]
    return f"Frigost{ns_part}{p_part}Enum"

# --------------------------------------------------
# Main
# --------------------------------------------------

def main():
    log("========== FRIGOST STUB GENERATOR (MD+CACHE) ==========\n")
    os.makedirs(CACHE_DIR, exist_ok=True)

    # --- Discover pages (HTML)
    log("========== DISCOVERING PAGES (HTML) ==========\n")
    method_pages = discover_links(urljoin(BASE, ROOT_METHODS), ROOT_METHODS)

    fight_method_pages = discover_links(
        urljoin(BASE, ROOT_FIGHT_METHODS),
        ROOT_FIGHT_METHODS
    )

    obj_pages = discover_links(
        urljoin(BASE, ROOT_FIGHT_OBJECTS),
        ROOT_FIGHT_OBJECTS
    )

    method_pages = sorted(set(method_pages + fight_method_pages))

    log(f"[TOTAL METHOD PAGES] {len(method_pages)}")
    log(f"[TOTAL OBJECT PAGES] {len(obj_pages)}\n")

    namespaces: dict[str, list] = {}
    objects: dict[str, list] = {}
    written_aliases = set()

    # --------------------------------------------------
    # Parse methods from cached MD
    # --------------------------------------------------
    log("========== PARSING METHODS (MD) ==========\n")

    for i, url in enumerate(method_pages, 1):
        log(f"[METHOD {i}/{len(method_pages)}] {url}")

        md, md_url = fetch_md_for_page(url)
        if not md:
            continue

        proto = extract_proto_from_md(md)
        if not proto:
            log(f"[WARN] No prototype in {md_url}")
            continue

        m = re.match(r"^([A-Za-z_]\w*)\.([A-Za-z_]\w*)\((.*)\)$", proto)
        if not m:
            log(f"[WARN] Prototype not matched: {proto}")
            continue

        ns, fn, args_str = m.groups()
        args = [a.strip() for a in args_str.split(",") if a.strip()]

        desc = extract_hint_description(md)
        params = parse_params_from_md(md)
        returns = parse_returns_from_md(md)

        namespaces.setdefault(ns, []).append((fn, args, params, returns, desc))
        time.sleep(SLEEP)

    log(f"\n[METHODS DONE] Namespaces found: {len(namespaces)}\n")

    # --------------------------------------------------
    # Parse objects from cached MD
    # --------------------------------------------------
    log("========== PARSING OBJECTS (MD) ==========\n")

    for i, url in enumerate(obj_pages, 1):
        log(f"[OBJECT {i}/{len(obj_pages)}] {url}")

        md, md_url = fetch_md_for_page(url)
        if not md:
            continue

        name = extract_title_h1(md) or "UnknownObject"
        fields = parse_object_fields_from_md(md)
        if fields:
            objects[name] = fields

        time.sleep(SLEEP)

    log(f"\n[OBJECTS DONE] Objects found: {len(objects)}\n")

    # --------------------------------------------------
    # Generate Lua
    # --------------------------------------------------
    log(f"========== WRITING {OUT_FILE} ==========\n")

    with open(OUT_FILE, "w", encoding="utf-8") as f:
        f.write("---@meta\n\n")

        # Objects
        for obj, fields in sorted(objects.items()):
            cls = re.sub(r"[^\w]", "_", obj).strip("_") or "Object"
            f.write(f"---@class {cls}\n")
            for name, typ in fields:
                safe_name = re.sub(r"[^\w]", "_", name).strip("_") or name
                f.write(f"---@field {safe_name} {typ}\n")
            f.write(f"local {cls} = {{}}\n\n")

        # Namespaces
        for ns, methods in sorted(namespaces.items()):
            f.write(f"---@class Frigost_{ns}\n")
            f.write(f"local {ns} = {{}}\n\n")

            for fn, args, params, returns, desc in methods:
                if desc:
                    f.write(f"--- {desc}\n")

                # Params
                for p in params:
                    pname = p["name"]
                    raw_type = p["raw_type"]
                    pdesc = p["desc"]
                    optional = p["optional"]

                    enum_vals = extract_enum_values(raw_type + " " + pdesc)
                    if enum_vals:
                        alias_name = make_alias_name(ns, pname)
                        if alias_name not in written_aliases:
                            written_aliases.add(alias_name)
                            if alias_name == "FrigostConsoleColor":
                                f.write("---Console colors available\n")
                            f.write(f"---@alias {alias_name}\n")
                            f.write("---| integer  -- " + ", ".join(enum_vals) + "\n\n")
                        ltype = alias_name
                    else:
                        ltype = lua_type(raw_type)

                    name_out = f"{pname}?" if optional and not pname.endswith("?") else pname
                    if pdesc:
                        f.write(f"---@param {name_out} {ltype} {pdesc}\n")
                    else:
                        f.write(f"---@param {name_out} {ltype}\n")

                # Returns
                if returns:
                    rtype = lua_type(returns[0][0])
                    rdesc = returns[0][1] or ""
                    rdesc = norm_space(strip_md_links(rdesc))
                    f.write(f"---@return {rtype} {rdesc}\n")
                else:
                    f.write(f"---@return nil\n")

                f.write(f"function {ns}.{fn}({', '.join(args)}) end\n\n")

            f.write(f"_G.{ns} = {ns}\n\n")

    log(f"[DONE] {OUT_FILE} generated successfully.")
    log("===============================================")

# --------------------------------------------------

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        log("\n[ABORTED] Interrupted by user.")
        sys.exit(1)
