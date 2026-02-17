# TODO

- [x] Conversion automatique des tables HTML en tables markdown pipe (script _2)
- [ ] Parsing complet des objets (certaines propriétés complexes ou imbriquées non gérées)
- [ ] Génération de la doc pour tous les types d'objets

# Installation des dépendances Python

Ce projet nécessite Python

```sh
pip install requests beautifulsoup4
```

# Lancer le script

Utilisez le script `generate_frigost_stubs_from_md.py` pour générer les stubs Lua :

```sh
python generate_frigost_stubs_from_md.py
```

# Fonctionnement du cache

Lors de la première exécution, le script télécharge tous les fichiers `.md` nécessaires et les stocke dans le dossier `markdown/` (cache local). Les exécutions suivantes réutilisent ce cache, sauf si `FORCE_REFRESH = True` est activé dans le script.

# Limites actuelles

- Le parsing des objets n'est pas complet : certaines structures complexes ou imbriquées dans les tables markdown ou HTML ne sont pas encore totalement supportées.
- Les propriétés d'objet très spécifiques ou multi-types peuvent nécessiter des ajustements manuels.
