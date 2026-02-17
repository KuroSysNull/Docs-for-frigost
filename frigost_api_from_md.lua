---@meta

---@class enum_Stat
---@field ACTION_POINTS integer
---@field STATS_POINTS integer
---@field SPELL_POINTS integer
---@field LEVEL integer
---@field STRENGTH integer
---@field VITALITY integer
---@field WISDOM integer
---@field CHANCE integer
---@field AGILITY integer
---@field INTELLIGENCE integer
---@field ALL_DAMAGES_BONUS integer
---@field DAMAGES_FACTOR integer
---@field CRITICAL_HIT integer
---@field RANGE integer
---@field DAMAGES_PHYSICAL_REDUCTION integer
---@field EXPERIENCE_BOOST integer
---@field MOVEMENT_POINTS integer
---@field INVISIBILITY integer
---@field DAMAGES_PERCENT integer
---@field MAX_SUMMONED_CREATURES_BOOST integer
---@field DODGE_PA_LOST_PROBABILITY integer
---@field DODGE_PM_LOST_PROBABILITY integer
---@field ENERGY_POINTS integer
---@field ALIGNMENT_VALUE integer
---@field WEAPON_DAMAGES_PERCENT integer
---@field PHYSICAL_DAMAGES_BONUS integer
---@field EARTH_ELEMENT_RESIST_PERCENT integer
---@field FIRE_ELEMENT_RESIST_PERCENT integer
---@field WATER_ELEMENT_RESIST_PERCENT integer
---@field AIR_ELEMENT_RESIST_PERCENT integer
---@field NEUTRAL_ELEMENT_RESIST_PERCENT integer
---@field DIFFERENT_LOOK integer
---@field CRITICAL_MISS integer
---@field WEIGHT integer
---@field RESTRICTION_ON_MYSELF integer
---@field RESTRICTION_ON_OTHER integer
---@field ALIGNMENT_SIDE integer
---@field INITIATIVE integer
---@field SHOP_REDUCTION_PERCENTAGE integer
---@field ALIGNMENT_RANK integer
---@field MAX_ENERGY_POINTS integer
---@field MAGIC_FIND integer
---@field HEAL_BONUS integer
---@field REFLECT_DAMAGE integer
---@field ENERGY_LOOSE integer
---@field HONOUR_POINTS integer
---@field DISHOUNOUR_POINTS integer
---@field EARTH_ELEMENT_REDUCTION integer
---@field FIRE_ELEMENT_REDUCTION integer
---@field WATER_ELEMENT_REDUCTION integer
---@field AIR_ELEMENT_REDUCTION integer
---@field NEUTRAL_ELEMENT_REDUCTION integer
---@field PVP_EARTH_ELEMENT_RESIST_PERCENT integer
---@field PVP_FIRE_ELEMENT_RESIST_PERCENT integer
---@field PVP_WATER_ELEMENT_RESIST_PERCENT integer
---@field PVP_AIR_ELEMENT_RESIST_PERCENT integer
---@field PVP_NEUTRAL_ELEMENT_RESIST_PERCENT integer
---@field PVP_EARTH_ELEMENT_REDUCTION integer
---@field PVP_FIRE_ELEMENT_REDUCTION integer
---@field PVP_WATER_ELEMENT_REDUCTION integer
---@field PVP_AIR_ELEMENT_REDUCTION integer
---@field PVP_NEUTRAL_ELEMENT_REDUCTION integer
---@field TRAP_DAMAGE_BONUS_PERCENT integer
---@field TRAP_DAMAGE_BONUS integer
---@field FAKE_SKILL_FOR_STATES integer
---@field SOUL_CAPTURE_BONUS integer
---@field RIDE_XP_BONUS integer
---@field CONFUSION integer
---@field PERMANENT_DAMAGE_PERCENT integer
---@field UNLUCKY integer
---@field MAXIMIZE_ROLL integer
---@field TACKLE_EVADE integer
---@field TACKLE_BLOCK integer
---@field ALLIANCE_AUTO_AGGRESS_RANGE integer
---@field ALLIANCE_AUTO_AGGRESS_RESISTANCE integer
---@field AP_ATTACK integer
---@field MP_ATTACK integer
---@field PUSH_DAMAGE_BONUS integer
---@field PUSH_DAMAGE_REDUCTION integer
---@field CRITICAL_DAMAGE_BONUS integer
---@field CRITICAL_DAMAGE_REDUCTION integer
---@field EARTH_DAMAGE_BONUS integer
---@field FIRE_DAMAGE_BONUS integer
---@field WATER_DAMAGE_BONUS integer
---@field AIR_DAMAGE_BONUS integer
---@field NEUTRAL_DAMAGE_BONUS integer
---@field MAX_BOMB_SUMMON integer
---@field BOMB_COMBO_BONUS integer
---@field MAX_LIFE integer
---@field SHIELD integer
---@field CUR_LIFE integer
---@field DAMAGES_PERCENT_SPELL integer
---@field EXTRA_SCALE_FLAT integer
---@field PASS_TURN integer
---@field RESIST_PERCENT integer
---@field CUR_PERMANENT_DAMAGE integer
---@field WEAPON_POWER integer
---@field INCOMING_DAMAGE_PERCENT_MULTIPLICATOR integer
---@field INCOMING_DAMAGE_HEAL_PERCENT_MULTIPLICATOR integer
---@field GLYPH_POWER integer
---@field DEALT_DAMAGE_MULTIPLIER integer
---@field STOP_XP integer
---@field HUNTER integer
---@field RUNE_POWER integer
---@field DEALT_DAMAGE_MULTIPLIER_DISTANCE integer
---@field RECEIVED_DAMAGE_MULTIPLIER_DISTANCE integer
---@field DEALT_DAMAGE_MULTIPLIER_WEAPON integer
---@field DEALT_DAMAGE_MULTIPLIER_SPELLS integer
---@field RECEIVED_DAMAGE_MULTIPLIER_MELEE integer
---@field DEALT_DAMAGE_MULTIPLIER_MELEE integer
---@field AGILITY_INITIAL_PERCENT integer
---@field STRENGTH_INITIAL_PERCENT integer
---@field CHANCE_INITIAL_PERCENT integer
---@field INTELLIGENCE_INITIAL_PERCENT integer
---@field VITALITY_INITIAL_PERCENT integer
---@field WISDOM_INITIAL_PERCENT integer
---@field TACKLE_EVADE_INITIAL_PERCENT integer
---@field TACKLE_BLOCK_INITIAL_PERCENT integer
---@field ACTION_POINTS_INITIAL_PERCENT integer
---@field MOVEMENT_POINTS_INITIAL_PERCENT integer
---@field AP_ATTACK_INITIAL_PERCENT integer
---@field MP_ATTACK_INITIAL_PERCENT integer
---@field DODGE_PA_LOST_PROBABILITY_INITIAL_PERCENT integer
---@field DODGE_PM_LOST_PROBABILITY_INITIAL_PERCENT integer
---@field EXTRA_SCALE_PERCENT integer
---@field RECEIVED_DAMAGE_MULTIPLIER_SPELLS integer
---@field RECEIVED_DAMAGE_MULTIPLIER_WEAPON integer
---@field DEALT_HEAL_MULTIPLIER integer
---@field CHARAC_COUNT integer
enum_Stat = {}

---@class AccessibleCell
---@field index integer
---@field cellId integer
---@field distance integer
---@field farScore integer
---@field losScore integer
---@field remainingMP integer
---@field remainingAP integer
---@field tackleLostMP integer
---@field tackleLostAP integer
---@field pathCells integer
local AccessibleCell = {}

---@class Challenge
---@field id integer
---@field name string
---@field targets integer
---@field state integer
local Challenge = {}

---@class Fighter
---@field id integer
---@field carriedId integer
---@field type integer
---@field name string
---@field team integer
---@field isSummoned boolean
---@field masterId integer
---@field cellId integer
---@field AP integer
---@field MP integer
---@field Range integer
---@field level integer
---@field breedId integer
---@field companionId integer
---@field creatureGenericId integer
---@field lifePoints integer
---@field maxLifePoints integer
---@field invisibilityState integer
---@field isInvulnerable_isInvulnerableMelee_isInvulnerableRange boolean
---@field summonsCount integer
---@field stats any
---@field states any[]
local Fighter = {}

---@class Spell
---@field priority integer
---@field spell_id integer
---@field target_type integer
---@field target_ids string
---@field life_condition integer
---@field life_value integer
---@field starting_turn_condition integer
---@field starting_turn integer
---@field starting_turn_mod integer
---@field every_x_turn integer
---@field repeat_max integer
---@field max_per_target integer
---@field hand_to_hand integer
---@field cast_distance_condition integer
---@field cast_distance integer
---@field target_vulnerable boolean
---@field target_invulnerable boolean
---@field target_invulnerable_melee boolean
---@field target_invulnerable_range boolean
---@field adjacent_type integer
local Spell = {}

---@class State
---@field sourceId integer
---@field stateId integer
---@field spellId integer
---@field uid integer
---@field duration integer
---@field dissipated integer
local State = {}

---@class Frigost_basicFight
local basicFight = {}

--- Méthode permettant d'ajouter des sorts au combattant dans l'IA basique.
---@param spells any[] Liste des sorts à ajouter.
---@return nil
function basicFight.addSpells(spells) end

--- Méthode permettant de vider la liste des sorts du combattant dans l'IA basique.
---@return nil
function basicFight.clearSpells() end

--- Méthode permettant de jouer avec l'IA basique. * Quand cette fonction est appelée, l'exécution de la fonction fight\_action() est interrompu.
---@return nil
function basicFight.play(permanent, tactic, focus, tacklePath, distanceCondition) end

_G.basicFight = basicFight

---@class Frigost_character
local character = {}

--- Méthode permettant de retourner le nombre de combats effectués.
---@return integer Le nombre de combats effectués.
function character.fightCount() end

--- Méthode permettant de retourner le nombre de récoltes effectuées.
---@return integer Le nombre de récoltes effectuées.
function character.gatherCount() end

--- Méthode permettant de retourner l'identifiant du personnage sur le jeu.
---@return integer L'identifiant du personnage sur le jeu.
function character.id() end

--- Méthode permettant d'indiquer si le personnage est en combat ou non.
---@return boolean Indiquant si le personnage est en combat ou non.
function character.isInFight() end

--- Méthode permettant de lancer échange avec un personnage.
---@param name string Le nom du personnage.
---@param id integer L'identifiant du personnage.
---@return boolean Indiquant le succès du lancement de l'échange.
function character.launchExchange(name) character.launchExchange(id) end

--- Méthode permettant de retourner le niveau du personnage.
---@return integer Le niveau du personnage.
function character.level() end

--- Méthode permettant de retourner le nom du personnage.
---@return string Le nom du personnage.
function character.name() end

--- Méthode permettant d'indiquer si un personnage est présent sur la carte.
---@param name string Le nom du personnage.
---@param id integer L'identifiant du personnage.
---@return boolean Indiquant si un personnage est présent sur la carte.
function character.playerInMap(name) character.playerInMap(id) end

--- Méthode permettant de réinitialiser le nombre de combats effectués.
---@return nil
function character.resetFightCount() end

--- Méthode permettant de réinitialiser le nombre de récoltes effectuées.
---@return nil
function character.resetGatherCount() end

--- Méthode permettant de retourner le nom du serveur.
---@return string Le nom du serveur.
function character.server() end

--- Méthode permettant d'indiquer si le personnage vient de sortir d'un combat.
---@return boolean Indiquant si le personnage vient de sortir d'un combat.
function character.wasInFight() end

_G.character = character

---@class Frigost_config
local config = {}

--- Méthode permettant de récupérer la valeur d'une option dans la configuration du compte.
---@param option any[] Chemin vers l'option.
---@return string La valeur de l'option dans la configuration du compte.
function config.get(option) end

--- Méthode permettant de charger une configuration JSON au compte.
---@param path string Chemin vers le fichier JSON contenant la nouvelle configuration à charger au compte.
---@return nil
function config.import(path) end

--- Méthode permettant de charger une configuration JSON des combattants au compte.
---@param path string Chemin vers le fichier JSON contenant la nouvelle configuration des combattants à charger au compte.
---@return nil
function config.importFighters(path) end

--- Méthode permettant d'attribuer une valeur à une option dans la configuration du compte.
---@param option any[] Chemin vers l'option. Le dernier élément de la liste est la nouvelle valeur à attribuer.
---@return nil
function config.set(option) end

_G.config = config

---@class Frigost_console
local console = {}

--- Méthode permettant de vider le contenu de la console.
---@return nil
function console.clear() end

--- Méthode permettant d'afficher un texte dans la console avec la couleur rouge.
---@param text string Le texte à afficher.
---@return nil
function console.error(text) end

--- Méthode permettant de retourner la liste des lignes affichées dans la console.
---@return string Liste contenant les lignes affichées dans la console.
function console.lines() end

--- Méthode permettant d'afficher un texte dans la console avec une couleur.
---@param text string Le texte à afficher.
---Console colors available
---@alias FrigostConsoleColor
---| integer  -- console.gray

---@param color? FrigostConsoleColor L'une des valeurs : console.gray
---@param console.yellow any
---@param console.cyan any
---@param console.green any
---@param console.blue any
---@param console.red any
---@param console.orange any
---@param console.pink any
---@return nil
function console.print(text, color) end

--- Méthode permettant d'afficher un texte dans la console avec la couleur verte.
---@param text string Le texte à afficher.
---@return nil
function console.success(text) end

_G.console = console

---@class Frigost_fight
local fight = {}

--- Méthode permettant de lancer un sort sur une cellule. * Quand cette fonction est appelée, l'exécution de la fonction fight\_action() est interrompu.
---@param spellId integer L'identifiant du sort.
---@param cellId integer La cellule ciblée.
---@param force? boolean false : la fonction ne vérifie pas si le personnage est capable de lancer le sort, utile pour utiliser l'arme. true : la fonction vérifie si le personnage est capable de lancer le sort.
---@return any Si le combattant ne peut pas lancer le sort.
function fight.castSpell(spellId, cellId, force) end

--- Méthode permettant de passer le tour. * Quand cette fonction est appelée, l'exécution de la fonction fight\_action() ou fight\_procedure() est interrompu.
---@return nil
function fight.finishTurn() end

--- Méthode permettant d'abandonner le combat. * Quand cette fonction est appelée, l'exécution de la fonction fight\_action() ou fight\_procedure() est interrompu.
---@return nil
function fight.giveUp() end

--- Méthode permettant de se déplacer à une cellule par son index. * Quand cette fonction est appelée, l'exécution de la fonction fight\_action() est interrompu.
---@param index integer L' index de la cellule.
---@return any En cas d'échec ou si le combattant est déjà sur cette cellule.
function fight.moveToAccessibleCell(index) end

--- Méthode permettant de se déplacer à une cellule. * Si la cellule est inaccessible, le combattant se déplace à la cellule la plus proche de cette dernière. * Quand cette fonction est appelée, l'exécution de la fonction fight\_action() est interrompu.
---@param index integer La cellule ciblée.
---@return any En cas d'échec ou si le combattant est déjà sur cette cellule.
function fight.moveTowardCell(cellId) end

--- Méthode permettant d'indiquer si un sort peut être lancé par le combattant. * Retourne enum\_SpellCastError.NoError si le sort peut être lancé.
---@param spellId integer L'identifiant du sort.
---@param launchCellId integer La cellule du lancement du sort.
---@param targetCellId integer La cellule ciblée.
---@return nil
function fight.canCastSpell(spellId, launchCellId, targetCellId) end

--- Méthode permettant de retourner la liste des challenges.
---@return any[] La liste des challenges.
function fight.challenges() end

--- Méthode permettant de retourner la confusion appliquée au personnage contre le Comte Harebourg.
---@return integer 0 = 0° 1 = 90° 2 = 180° 3 = 270°
function fight.confusion() end

--- Méthode permettant de retourner la cellule qu'il faut viser pour cibler une cible dans un combat à confusion.
---@param confusion integer Retourné par fight.confusion() .
---@param centerCell integer La cellule du du lancement du sort.
---@param targetCell integer La cellule à cibler.
---@return integer La cellule qu'il faut viser pour cibler targetCell .
function fight.confusionCell(confusion, centerCell, targetCell) end

--- Méthode permettant de retourner combien de fois la fonction fight\_action() a été appelée pendant le tour.
---@return integer Combien de fois la fonction fight\_action() a été appelée pendant le tour.
function fight.currentAction() end

--- Méthode permettant de retourner le tour actuel du combat.
---@return integer Le tour actuel du combat.
function fight.currentRound() end

--- Méthode permettant de retourner la liste des cellules accessibles par un combattant.
---@param id? integer Identifiant du combattant.
---@return any[] La liste des cellules accessibles par le combattant.
function fight.accessibleCells(id) end

--- Méthode permettant retourner les cellules adjacentes à une cellule spécifique. * Cette méthode ne vérifie pas que les cellules retournées contiennent un obstacle ou un autre combattant.
---@param cellId integer Une cellule spécifique.
---@return integer Liste des cellules adjacentes à une cellule spécifique.
function fight.adjacentCells(cellId) end

--- Méthode permettant d'indiquer si une cellule est walkable et libre (ne contient aucun combattant).
---@param cellId integer La cellule à vérifier.
---@return boolean Indiquant si la cellule est libre (ne contient aucun combattant).
function fight.cellIsFree(cellId) end

--- Méthode permettant d'indiquer si une cellule ne contient pas un obstacle.
---@param cellId integer La cellule à vérifier.
---@return boolean Indiquant si la cellule ne contient pas un obstacle.
function fight.cellIsWalkable(cellId) end

--- Méthode permettant d'indiquer si deux cellules sont adjacentes l'une à l'autre.
---@param cellId1 cellId2 integer Les deux cellules.
---@return boolean Indiquant si les deux cellules sont adjacentes l'une à l'autre.
function fight.cellsAdjacent(cellId1, cellId2) end

--- Méthode permettant d'indiquer si deux cellules sont dans la même ligne.
---@param cellId1 cellId2 integer Les deux cellules.
---@return boolean Indiquant si les deux cellules sont dans la même ligne.
function fight.cellsAligned(cellId1, cellId2) end

--- Méthode permettant de retourner la distance entre deux cellules.
---@param cellId1 cellId2 integer Les deux cellules.
---@return integer La distance entre les deux cellules.
function fight.cellsDistance(cellId1, cellId2) end

--- Méthode permettant d'indiquer si deux cellules sont en diagonale.
---@param cellId1 cellId2 integer Les deux cellules.
---@return boolean Indiquant si les deux cellules sont en diagonale.
function fight.cellsInDiagonal(cellId1, cellId2) end

--- Méthode permettant de récupérer la liste des cellules formant un cercle autour d'un centre, avec un rayon minimal et et un rayon maximal. * Cette méthode ne vérifie pas que les cellules retournées contiennent un obstacle ou un autre combattant.
---@param centerCellId integer Le centre.
---@param minRadius integer Le rayon minimal.
---@param maxRadius integer La rayon maximal.
---@return integer Liste des cellules.
function fight.circleCells(centerCellId, minRadius, maxRadius) end

--- Méthode permettant de récupérer la liste des cellules formant une croix autour d'un centre, avec un rayon minimal et et un rayon maximal. * Cette méthode ne vérifie pas que les cellules retournées contiennent un obstacle ou un autre combattant.
---@param centerCellId integer Le centre.
---@param minRadius integer Le rayon minimal.
---@param maxRadius integer La rayon maximal.
---@return integer Liste des cellules.
function fight.crossCells(centerCellId, minRadius, maxRadius) end

--- Méthode permettant de récupérer la liste des cellules formant une diagonale autour d'un centre, avec un rayon minimal et et un rayon maximal. * Cette méthode ne vérifie pas que les cellules retournées contiennent un obstacle ou un autre combattant.
---@param centerCellId integer Le centre.
---@param minRadius integer Le rayon minimal.
---@param maxRadius integer La rayon maximal.
---@return integer Liste des cellules.
function fight.diagonalCells(centerCellId, minRadius, maxRadius) end

--- Méthode permettant calculer le chemin entre deux cellules tout en évitant des obstacles. * Peut aussi être utilisée pour calculer la distance entre deux cellules suivant un chemin.
---@param fromCellId integer Cellule du départ
---@param toCellId integer Cellule d'arrivé.
---@param obstacles integer Liste des cellules à éviter pendant le calcule du chemin.
---@return integer Liste contenant les cellules du chemin calculé. Liste vide { } si aucun chemin n'a été trouvé.
function fight.findPath(fromCellId, toCellId, obstacles) end

--- Méthode permettant d'indiquer si un combattant possède la ligne de vue entre deux cellules.
---@param launchCell targetCell integer Les deux cellules.
---@param id? integer Identifiant du combattant.
---@return boolean true = possède la ligne de vue. false = ne possède pas la ligne de vue, ou le combattant n'existe pas.
function fight.hasLineOfSight(launchCell, targetCell, id) end

--- Méthode permettant d'indiquer des cellules à éviter pendant le déplacement du combattant. * Les cellules à éviter sont considérées comme occupées par un obstacle. * Les cellules à éviter sont réinitialisées à chaque début du tour.
---@param cells integer Les cellules à éviter. Liste vide { } pour réinitialiser.
---@return nil
function fight.setBlacklistedCells(cells) end

--- Méthode permettant de récupérer la liste des cellules formant un carré autour d'un centre, avec un rayon minimal et et un rayon maximal. * Cette méthode ne vérifie pas que les cellules retournées contiennent un obstacle ou un autre combattant.
---@param centerCellId integer Le centre.
---@param minRadius integer Le rayon minimal.
---@param maxRadius integer La rayon maximal.
---@return integer Liste des cellules.
function fight.squareCells(centerCellId, minRadius, maxRadius) end

--- Méthode permettant de retourner l'objet Fighter représentant le combattant en train de jouer le tour.
---@return any Objet Fighter représentant le combattant en train de jouer le tour.
function fight.currentFighter() end

--- Méthode permettant de retourner l'identifiant du combattant en train de jouer le tour.
---@return integer L'identifiant du combattant en train de jouer le tour.
function fight.currentFighterId() end

--- Méthode permettant de retourner l'objet Fighter représentant un combattant.
---@param cellId integer Cellule du combattant.
---@return any Objet Fighter représentant le combattant.
function fight.fighterByCellId(cellId) end

--- Méthode permettant de retourner l'objet Fighter représentant un combattant.
---@param id integer Identifiant du combattant.
---@return any Objet Fighter représentant le combattant.
function fight.fighterById(id) end

--- Méthode permettant de retourner la liste d'objets Fighter de tous les combattants en vie dans le combat.
---@return any[] La liste d'objets Fighter de tous les combattants en vie dans le combat.
function fight.fighters() end

--- Méthode permettant de retourner l'objet Fighter représentant l'allié le plus proche.
---@return any Objet Fighter représentant l'allié le plus proche.
function fight.nearestAlly() end

--- Méthode permettant de retourner l'objet Fighter représentant l'ennemi le plus proche.
---@return any Objet Fighter représentant l'ennemi le plus proche.
function fight.nearestEnemy() end

_G.fight = fight

---@class Frigost_global
local global = {}

--- Méthode permettant de retourner l'alias du compte.
---@return string L'alias du compte.
function global.alias() end

--- Déconnecte le compte et crash la fenêtre après X secondes. * En team, si appelée par le chef, l'action est appliquée sur toute la team. * À utiliser avec l'option du relancement en cas de crash pour simuler une reconnexion.
---@param s integer La durée en secondes à attendre avant de crash'er la fenêtre.
---@return nil
function global.crashAfter(s) end

--- Méthode permettant de retourner l'adresse IP utilisée par le compte.
---@return string L'adresse IP utilisée par le compte.
function global.currentIP() end

--- Méthode permettant de déconnecter le compte. * En team, si appelée par le chef, elle déconnecte toute la team.
---@return nil
function global.disconnect() end

--- Méthode permettant de retourner le chemin du dossier contenant logiciel.
---@return string Le chemin du dossier contenant le logiciel.
function global.folder() end

--- Méthode permettant d'indiquer si un modérateur a été détecté durant les X dernières minutes. * Cette méthode ne peut être utilisée que en solo ou par le chef du groupe.
---@param minutes integer Si par exemple minutes = 5, la méthode va vérifier la présence durant les 5 dernières minutes.
---@return string Le nom du modérateur si présent. "" si aucun modérateur n'est présent.
function global.getModerator(minutes) end

--- Méthode permettant d'afficher une boîte de dialogue avec un champs de texte à saisir et à retourner.
---@param text string Le texte à afficher dans la boîte de dialogue.
---@return string Le texte saisi.
function global.input(text) end

--- Méthode permettant de retourner l'index (l'ordre) du compte sur la team.
---@return integer L'index (l'ordre) du compte sur la team.
function global.inTeamIndex() end

--- Méthode permettant d'indiquer si le compte est configuré en mode team.
---@return boolean Indiquant si le compte est configuré en mode team.
function global.isInTeam() end

--- Méthode permettant d'indiquer si le compte est configuré en tant que chef de la team.
---@return boolean Indiquant si le compte est configuré en tant que chef de la team.
function global.isTeamLeader() end

--- Méthode permettant de quitter l'interface ouverte (dialogue, échange, banque ...).
---@return nil
function global.leaveDialog() end

--- Méthode permettant de retourner le mot de passe du compte.
---@return string Le mot de passe du compte.
function global.password() end

--- Méthode permettant de jouer un fichier son au format (.wav).
---@param path string Le chemin vers le fichier son au format (.wav).
---@return nil
function global.playSound(path) end

--- Méthode permettant d'afficher une boîte de dialogue avec une question et attend la réponse de l'utilisateur avec OUI ou NON.
---@param q string La question à afficher.
---@return boolean true = la réponse choisie est OUI. false = la réponse choisie est NON.
function global.question(q) end

--- Méthode permettant de générer un nombre aléatoire.
---@param from to integer Générer un nombre aléatoire entre from et to .
---@return integer Le nombre aléatoire généré.
function global.random(from, to) end

--- Méthode permettant de mettre en pause l'exécution du script.
---@param ms integer La durée de la pause en millisecondes.
---@return nil
function global.sleep(ms) global.delay(ms) end

--- Méthode permettant de retourner le nombre de comptes configurés sur la team.
---@return integer Le nombre de comptes configurés sur la team.
function global.teamCount() end

--- Méthode permettant de retourner le numéro de la team.
---@return integer Le numéro de la team.
function global.teamNumber() end

--- Méthode permettant de retourner le unix timestamp.
---@param inMs? boolean false = la valeur retournée est en secondes. true = la valeur retournée est en millisecondes.
---@return integer Le unix timestamp.
function global.timestamp(inMs) end

--- Méthode permettant de retourner la clé Frigost .
---@return string La clé Frigost .
function global.token() end

--- Méthode permettant de retourner l'identifiant ou l'email du compte.
---@return string L'identifiant ou l'email du compte.
function global.username() end

--- Méthode permettant de mettre en pause le script jusqu'à ce que tous les membres de la team soient connectés et présents sur la même carte. * Utilisable uniquement en team et par le chef de la team.
---@return nil
function global.verifyTeam() end

_G.global = global

---@class Frigost_inventory
local inventory = {}

--- Méthode permettant de retourner le contenu de l'inventaire du personnage.
---@return any[] Le contenu de l'inventaire du personnage.
function inventory.content() end

--- Méthode permettant de supprimer la quantité X d'un objet.
---@param gid integer Identifiant GID de l'objet. Si négatif, il correspond au UID de l'objet.
---@param quantity integer La quantité à supprimer.
---@return nil
function inventory.deleteObject(gid, quantity) end

--- Méthode permettant de retourner les kamas du personnage.
---@return integer Les kamas du personnage.
function inventory.kamas() end

--- Méthode permettant de retourner le nom d'un objet.
---@param gid integer Identifiant GID de l'objet.
---@return string Le nom de l'objet GID .
function inventory.objectName(gid) end

--- Méthode permettant de retourner la position d'un objet dans l'inventaire.
---@param gid integer Identifiant GID de l'objet.
---@return integer La position de l'objet GID . -1 si l'objet est introuvable.
function inventory.objectPosition(gid) end

--- Méthode permettant de retourner la quantité d'un objet dans l'inventaire.
---@param gid integer Identifiant GID de l'objet.
---@param all? boolean false = retourne la quantité du premier objet GID présent dans l'inventaire. true = retourne le total des quantités des objets GID présents dans l'inventaire.
---@return integer La quantité de l'objet GID .
function inventory.objectQuantity(gid, all) end

--- Méthode permettant de retourner le UID d'un objet dans l'inventaire.
---@param gid integer Identifiant GID de l'objet.
---@return integer UID l'objet GID . -1 si l'objet est introuvable.
function inventory.objectUid(gid) end

--- Méthode permettant de retourner le pods du personnage.
---@return integer Le pods du personnage.
function inventory.pods() end

--- Méthode permettant de retourner le pods maximal du personnage.
---@return integer Le pods maximal du personnage.
function inventory.podsMax() end

--- Méthode permettant de retourner le pourcentage du pods du personnage.
---@return integer Le pourcentage du pods du personnage.
function inventory.podsPercent() end

--- Méthode permettant de changer la position (équiper ou déséquiper) un objet.
---@param gid integer Identifiant GID de l'objet. Si négatif, il correspond au UID de l'objet.
---@param new\_position integer La nouvelle position.
---@return nil
function inventory.setObjectPosition(gid, new_position) end

--- Méthode permettant d'utiliser la quantité X d'un objet.
---@param gid integer Identifiant GID de l'objet. Si négatif, il correspond au UID de l'objet.
---@param quantity? integer La quantité à utiliser.
---@return nil
function inventory.useObject(gid, quantity) end

_G.inventory = inventory

---@class Frigost_ipc
local ipc = {}

--- Méthode permettant d'exécuter un code LUA sur une fenêtre du jeu spécifique et retourne la valeur retournée par ce code. * La fenêtre doit avoir un compte connecté + script chargé + le script ne doit pas être en cours d'exécution, pour ne pas créer des conflits de deux exécutions parallèles.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param code string Le code à exécuter.
---@return string La valeur retournée.
function ipc.get(hwnd, code) end

--- Méthode permettant d'exécuter un code LUA sur une fenêtre du jeu spécifique. * La fenêtre doit avoir un compte connecté + script chargé + le script ne doit pas être en cours d'exécution, pour ne pas créer des conflits de deux exécutions parallèles. * **Exemple d'utilisation:** le chef du groupe lance un échange avec une mule, il envoie l'ordre à la mule d'accepter l'échange.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param code string Le code à exécuter.
---@return nil
function ipc.post(hwnd, code) end

_G.ipc = ipc

---@class Frigost_job
local job = {}

--- Méthode permettant de retourner le niveau d'un métier.
---@param jobId integer Identifiant du métier .
---@return integer Le niveau du métier.
function job.level(jobId) end

--- Méthode permettant de retourner le nom d'un métier.
---@param jobId integer Identifiant du métier .
---@return string Le nom du métier.
function job.name(jobId) end

_G.job = job

---@class Frigost_keyboard
local keyboard = {}

--- Méthode permettant de simuler un appui d'une touche du clavier.
---@param key integer Identifiant de la touche à récupérer ici . Par exemple pour simuler la touche H c'est 0x48.
---@return nil
function keyboard.down(key) end

--- Méthode permettant de simuler un appui d'une touche du clavier sur une fenêtre spécifique.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param key integer Identifiant de la touche à récupérer ici . Par exemple pour simuler la touche H c'est 0x48.
---@return nil
function keyboard.downInWindow(hwnd, key) end

--- Méthode permettant de simuler un appui+relâchement d'une touche du clavier.
---@param key integer Identifiant de la touche à récupérer ici . Par exemple pour simuler la touche H c'est 0x48.
---@param ctrl boolean Pour indiquer si la touche CTRL devrait être appuyée.
---@param alt boolean Pour indiquer si la touche ALT devrait être appuyée.
---@param shift boolean Pour indiquer si la touche SHIFT devrait être appuyée.
---@return nil
function keyboard.press(key, ctrl, alt, shift) end

--- Méthode permettant de simuler un appui+relâchement d'une touche du clavier sur une fenêtre spécifique.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param key integer Identifiant de la touche à récupérer ici . Par exemple pour simuler la touche H c'est 0x48.
---@param ctrl boolean Pour indiquer si la touche CTRL devrait être appuyée.
---@param alt boolean Pour indiquer si la touche ALT devrait être appuyée.
---@param shift boolean Pour indiquer si la touche SHIFT devrait être appuyée.
---@return nil
function keyboard.pressInWindow(hwnd, key, ctrl, alt, shift) end

--- Méthode permettant de simuler un relâchement d'une touche du clavier.
---@param key integer Identifiant de la touche à récupérer ici . Par exemple pour simuler la touche H c'est 0x48.
---@return nil
function keyboard.up(key) end

--- Méthode permettant de simuler un relâchement d'une touche du clavier sur une fenêtre spécifique.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param key integer Identifiant de la touche à récupérer ici . Par exemple pour simuler la touche H c'est 0x48.
---@return nil
function keyboard.upInWindow(hwnd, key) end

--- Méthode permettant de simuler l'écriture d'un texte.
---@param text string Le texte à écrire.
---@return nil
function keyboard.write(text) end

--- Méthode permettant de simuler l'écriture d'un texte sur une fenêtre spécifique.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param text string Le texte à écrire.
---@return nil
function keyboard.writeInWindow(hwnd, text) end

_G.keyboard = keyboard

---@class Frigost_map
local map = {}

--- Méthode permettant de retourner les archi-monstres présents dans la carte.
---@return any[] Les archi-monstres présents dans la carte.
function map.archiMonsters() end

--- Méthode permettant de calculer la distance entre deux cartes, c'est la même distance qui sera parcourue par un autopilotage.
---@param fromMapId integer Départ.
---@param toMapId integer Destination.
---@return integer La distance, sinon -1 en cas d'échec ou timeout.
function map.autotripDistance(fromMapId, toMapId) end

--- Méthode permettant de se déplacer d'une carte vers une destination en utilisant l'autopilotage.
---@param mapId integer Destination.
---@return boolean Si aucun changement de carte n'a été effectué pendant 10s.
function map.autotripOne(mapId) end

--- Méthode permettant de changer la carte
---@param direction string La direction.
---@return boolean Indiquant le succès de l'opération.
function map.change(direction) end

--- Méthode permettant de retourner la cellule du personnage.
---@return integer La cellule du personnage.
function map.currentCellId() end

--- Méthode permettant de retourner les coordonnées de la carte.
---@return string Les coordonnées de la carte sous la forme "X,Y".
function map.currentMap() end

--- Méthode permettant de retourner la MapId de la carte.
---@return integer MapId.
function map.currentMapId() end

--- Méthode permettant de retourner un string JSON contenant les données de la carte.
---@return string JSON contenant les données de la carte. Utiliez cet outil .
function map.data() end

--- Méthode permettant d'utiliser un interactif.
---@param cellId integer La cellule de l'interactif, à récupérer avec cet outil .
---@param changeMap? boolean true = l'utilisation a pour but de changer la carte, dans ce cas la méthode va attendre le changement de carte. false = la méthode retourne immédiatement après l'utilisation de l'interactif.
---@param timeout? integer La durée maximale à attendre avant de retourner en cas d'échec, en millisecondes.
---@return boolean Indiquant le succès de l'opération.
function map.door(cellId, changeMap, timeout) end

--- Méthode permettant de lancer un combat.
---@param wait boolean true = attendre la réapparition des monstres. false = retourner immédiatement si aucun monstre n'est présent.
---@return nil
function map.fight(wait) end

--- Méthode permettant de démarrer la récolte.
---@param wait boolean true = attendre la réapparition des objets récoltables. false = retourner immédiatement si aucune récolte n'est disponible.
---@return nil
function map.gather(wait) end

--- Méthode permettant d'utiliser un interactif.
---@param elementId integer La cellule de l'interactif, à récupérer avec cet outil .
---@param skillInstanceUid integer L'identifiant de la réponse. Si négatif, correspond à l'index de la réponse, par exemple -1 pour choisir la première réponse, -2 pour choisir la deuxième réponse ...
---@param changeMap? boolean true = l'utilisation a pour but de changer la carte, dans ce cas la méthode va attendre le changement de carte. false = la méthode retourne immédiatement après l'utilisation de l'interactif.
---@param timeout? integer La durée maximale à attendre avant de retourner en cas d'échec, en millisecondes.
---@return boolean Indiquant le succès de l'opération.
function map.interactive(elementId, skillInstanceUid, changeMap, timeout) end

--- Méthode permettant d'accéder à une maison avec un code.
---@param cellId integer La cellule de l'interactif, à récupérer avec cet outil .
---@param owner string Le nom complet du propriétaire de la maison, comme "nickname#1456".
---@param code string Le code pour accéder à la maison.
---@param timeout? integer La durée maximale à attendre avant de retourner en cas d'échec, en millisecondes.
---@return boolean Indiquant le succès de l'opération.
function map.lockedHouse(cellId, owner, code, timeout) end

--- Méthode permettant d'accéder à un coffre avec un code.
---@param cellId integer La cellule du coffre, à récupérer avec cet outil .
---@param code string Le code pour accéder au coffre.
---@param timeout? integer La durée maximale à attendre avant de retourner en cas d'échec, en millisecondes.
---@return boolean Indiquant le succès de l'opération.
function map.lockedStorage(cellId, code, timeout) end

--- Méthode permettant se déplacer sur une cellule
---@param cellId integer La cellule vers laquelle se déplacer.
---@param changeMap? boolean true = l'utilisation a pour but de changer la carte, dans ce cas la méthode va attendre le changement de carte. false = la méthode retourne immédiatement après le déplacement.
---@param timeout? integer La durée maximale à attendre avant de retourner en cas d'échec, en millisecondes.
---@return boolean Indiquant le succès de l'opération.
function map.move(cellId, changeMap, timeout) end

--- Méthode permettant d'indiquer si le personage est sur une carte.
---@param map string La carte à vérifier.
---@return boolean Indiquant si le personage est sur la carte.
function map.onMap(map) end

--- Méthode permettant de sauvegarder le zaap présent dans la carte. * L'interface du zaap est fermée après l'appel de cette méthode.
---@return boolean Indiquant le succès de l'opération.
function map.saveZaap() end

--- Méthode permettant d'utiliser le zaap/zaapi présent dans la carte pour se téléporter à une destination.
---@param destinationMapId integer La destination.
---@param isZaapi? boolean false = zaap. true = zaapi.
---@param timeout? integer La durée maximale à attendre avant de retourner en cas d'échec, en millisecondes.
---@return boolean Indiquant le succès de l'opération.
function map.teleport(destinationMapId, isZaapi, timeout) end

--- Méthode permettant de mettre en pause l'exécution du script jusqu'à le changement de la carte.
---@return nil
function map.waitChange() end

--- Méthode permettant de retourner le X de la carte.
---@return integer x.
function map.x() end

--- Méthode permettant de retourner le Y de la carte.
---@return integer y.
function map.y() end

_G.map = map

---@class Frigost_memory
local memory = {}

--- Méthode permettant de supprimer de la mémoire du jeu une variable précédemment sauvegardée.
---@param name string Le nom de la variable.
---@return nil
function memory.erase(name) end

--- Méthode permettant de récupérer de la mémoire du jeu une variable précédemment sauvegardée.
---@param name string Le nom de la variable.
---@return string La contenu de la variable.
function memory.get(name) end

--- Méthode permettant de garder en mémoire du jeu une variable.
---@param name string Le nom de la variable.
---@param value string La valeur de la variable.
---@return boolean Si le type du paramètre value n'est pas respecté.
function memory.set(name, value) end

_G.memory = memory

---@class Frigost_mouse
local mouse = {}

--- Méthode permettant de simuler un clique.
---@param x, y integer Les coordonnées du clique relatives à la fenêtre (et non pas à l'écran).
---@param rightClick boolean false = clique gauche. true = clique droit.
---@param ctrl boolean Pour indiquer si la touche CTRL devrait être appuyée.
---@param alt boolean Pour indiquer si la touche ALT devrait être appuyée.
---@param shift boolean Pour indiquer si la touche SHIFT devrait être appuyée.
---@return nil
function mouse.click(x, y, rightClick, ctrl, alt, shift) end

--- Méthode permettant de simuler un clique sur une fenêtre spécifique.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param x, y integer Les coordonnées du clique relatives à la fenêtre (et non pas à l'écran).
---@param rightClick boolean false = clique gauche. true = clique droit.
---@param ctrl boolean Pour indiquer si la touche CTRL devrait être appuyée.
---@param alt boolean Pour indiquer si la touche ALT devrait être appuyée.
---@param shift boolean Pour indiquer si la touche SHIFT devrait être appuyée.
---@return nil
function mouse.clickInWindow(hwnd, x, y, rightClick, ctrl, alt, shift) end

--- Méthode permettant de simuler un double clique.
---@param x, y integer Les coordonnées du clique relatives à la fenêtre (et non pas à l'écran).
---@param ctrl boolean Pour indiquer si la touche CTRL devrait être appuyée.
---@param alt boolean Pour indiquer si la touche ALT devrait être appuyée.
---@param shift boolean Pour indiquer si la touche SHIFT devrait être appuyée.
---@return nil
function mouse.doubleClick(x, y, ctrl, alt, shift) end

--- Méthode permettant de simuler un double clique sur une fenêtre spécifique.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param x, y integer Les coordonnées du clique relatives à la fenêtre (et non pas à l'écran).
---@param ctrl boolean Pour indiquer si la touche CTRL devrait être appuyée.
---@param alt boolean Pour indiquer si la touche ALT devrait être appuyée.
---@param shift boolean Pour indiquer si la touche SHIFT devrait être appuyée.
---@return nil
function mouse.doubleClickInWindow(hwnd, x, y, ctrl, alt, shift) end

--- Méthode permettant de simuler un glisser-déposer.
---@param from\_x, from\_y integer Les coordonnées du départ, relatives à la fenêtre (et non pas à l'écran).
---@param to\_x, to\_y integer Les coordonnées de la fin, relatives à la fenêtre (et non pas à l'écran).
---@param ctrl boolean Pour indiquer si la touche CTRL devrait être appuyée.
---@param alt boolean Pour indiquer si la touche ALT devrait être appuyée.
---@param shift boolean Pour indiquer si la touche SHIFT devrait être appuyée.
---@return nil
function mouse.dragAndDrop(from_x, from_y, to_x, to_y, ctrl, alt, shift) end

--- Méthode permettant de simuler un glisser-déposer sur une fenêtre spécifique.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param from\_x, from\_y integer Les coordonnées du départ, relatives à la fenêtre (et non pas à l'écran).
---@param to\_x, to\_y integer Les coordonnées de la fin, relatives à la fenêtre (et non pas à l'écran).
---@param ctrl boolean Pour indiquer si la touche CTRL devrait être appuyée.
---@param alt boolean Pour indiquer si la touche ALT devrait être appuyée.
---@param shift boolean Pour indiquer si la touche SHIFT devrait être appuyée.
---@return nil
function mouse.dragAndDropInWindow(hwnd, from_x, from_y, to_x, to_y, ctrl, alt, shift) end

--- Méthode permettant de déplacer le curseur de la souris.
---@param x, y integer Les coordonnées du clique relatives à la fenêtre (et non pas à l'écran).
---@return nil
function mouse.move(x, y) end

--- Méthode permettant de déplacer le curseur de la souris sur une fenêtre spécifique.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param x, y integer Les coordonnées du clique relatives à la fenêtre (et non pas à l'écran).
---@return nil
function mouse.moveInWindow(hwnd, x, y) end

--- Méthode permettant de simuler un appui de la souris.
---@param x, y integer Les coordonnées du clique relatives à la fenêtre (et non pas à l'écran).
---@param rightClick boolean false = clique gauche. true = clique droit.
---@param ctrl boolean Pour indiquer si la touche CTRL devrait être appuyée.
---@param alt boolean Pour indiquer si la touche ALT devrait être appuyée.
---@param shift boolean Pour indiquer si la touche SHIFT devrait être appuyée.
---@return nil
function mouse.press(x, y, rightClick, ctrl, alt, shift) end

--- Méthode permettant de simuler un appui de la souris sur une fenêtre spécifique.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param x, y integer Les coordonnées du clique relatives à la fenêtre (et non pas à l'écran).
---@param rightClick boolean false = clique gauche. true = clique droit.
---@param ctrl boolean Pour indiquer si la touche CTRL devrait être appuyée.
---@param alt boolean Pour indiquer si la touche ALT devrait être appuyée.
---@param shift boolean Pour indiquer si la touche SHIFT devrait être appuyée.
---@return nil
function mouse.pressInWindow(hwnd, x, y, rightClick, ctrl, alt, shift) end

--- Méthode permettant de simuler un relâchement de la souris.
---@param x, y integer Les coordonnées du clique relatives à la fenêtre (et non pas à l'écran).
---@param rightClick boolean false = clique gauche. true = clique droit.
---@param ctrl boolean Pour indiquer si la touche CTRL devrait être appuyée.
---@param alt boolean Pour indiquer si la touche ALT devrait être appuyée.
---@param shift boolean Pour indiquer si la touche SHIFT devrait être appuyée.
---@return nil
function mouse.release(x, y, rightClick, ctrl, alt, shift) end

--- Méthode permettant de simuler un relâchement de la souris sur une fenêtre spécifique.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param x, y integer Les coordonnées du clique relatives à la fenêtre (et non pas à l'écran).
---@param rightClick boolean false = clique gauche. true = clique droit.
---@param ctrl boolean Pour indiquer si la touche CTRL devrait être appuyée.
---@param alt boolean Pour indiquer si la touche ALT devrait être appuyée.
---@param shift boolean Pour indiquer si la touche SHIFT devrait être appuyée.
---@return nil
function mouse.releaseInWindow(hwnd, x, y, rightClick, ctrl, alt, shift) end

_G.mouse = mouse

---@class Frigost_npc
local npc = {}

--- Méthode permettant d'indiquer si un PNJ est présent sur la carte.
---@param npcId integer Identifiant du PNJ à récupérer avec cet outil .
---@return boolean Indiquant si le PNJ est présent sur la carte.
function npc.exists(npcId) end

--- Méthode permettant d'indiquer si le personnage est en conversation avec un PNJ.
---@return boolean Indiquant si le personnage est en conversation avec un PNJ.
function npc.inDialog() end

--- Méthode permettant d'intéragir avec un PNJ.
---@param npcId integer Identifiant du PNJ à récupérer avec cet outil .
---@param actionId integer Achat / Vente. Conversation. Vente en hôtel de vente. Achat en hôtel de vente.
---@return boolean Indiquant le succès de l'opération.
function npc.interact(npcId, actionId) end

--- Méthode permettant de quitter l'interface ouverte (dialogue, échange, banque ...).
---@return nil
function npc.leaveDialog() end

--- Méthode permettant de retourner la liste des identifiants des réponses possibles lors de la dernière conversation avec un PNJ.
---@return integer Liste des identifiants des réponses possibles lors de la dernière conversation avec un PNJ.
function npc.possibleReplies() end

--- Méthode permettant de répondre à un dialogue avec un PNJ.
---@param replyId integer L'identifiant de la réponse. Si négatif, correspond à l'index de la réponse, par exemple -1 pour choisir la première réponse, -2 pour choisir la deuxième réponse ...
---@return boolean Indiquant le succès de l'opération.
function npc.reply(replyId) end

--- Méthode permettant de parler avec un PNJ.
---@param npcId integer Identifiant du PNJ à récupérer avec cet outil .
---@return boolean Indiquant le succès de l'opération.
function npc.talk(npcId) end

_G.npc = npc

---@class Frigost_pixel
local pixel = {}

--- Méthode permettant de retourner la couleur d'un pixel.
---@param x, y integer Les coordonnées du pixel relatives à la fenêtre (et non pas à l'écran).
---@return string La couleur sous la forme "#XXXXXX".
function pixel.color(x, y) end

--- Méthode permettant de retourner la couleur d'un pixel sur une fenêtre spécifique.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param x, y integer Les coordonnées du pixel relatives à la fenêtre (et non pas à l'écran).
---@return string La couleur sous la forme "#XXXXXX".
function pixel.colorInWindow(hwnd, x, y) end

--- Méthode permettant de convertir les coordonnées client (relatives à une fenêtre) en coordonnées écran (relatives à l'écran entier).
---@param x, y integer Les coordonnées à convertir.
---@return any Le résultat.
function pixel.fromClientToScreen(x, y) end

--- Méthode permettant de convertir les coordonnées client (relatives à une fenêtre spécifique) en coordonnées écran (relatives à l'écran entier).
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param x, y integer Les coordonnées à convertir.
---@return any Le résultat.
function pixel.fromClientToScreenInWindow(hwnd, x, y) end

--- Méthode permettant de convertir les coordonnées d’un point dans l’espace écran en coordonnées relatives à la fenêtre du jeu.
---@param x, y integer Les coordonnées à convertir.
---@return any Le résultat.
function pixel.fromScreenToClient(x, y) end

--- Méthode permettant de convertir les coordonnées d’un point dans l’espace écran en coordonnées relatives à une fenêtre spécifique
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param x, y integer Les coordonnées à convertir.
---@return any Le résultat.
function pixel.fromScreenToClientInWindow(hwnd, x, y) end

--- Méthode permettant de convertir une couleur RGB vers la représentation "#XXXXXX".
---@param r, g, b integer La couleur à convertir.
---@return string La représentation "#XXXXXX".
function pixel.RGB2HEX(r, g, b) end

--- Méthode permettant de mettre en pause le script jusqu'à ce qu'un pixel atteigne (ou cesse d'avoir) une couleur spécifique.
---@param x, y integer Les coordonnées du pixel relatives à la fenêtre (et non pas à l'écran).
---@param color string La couleur sous la forme "#XXXXXX".
---@param equal boolean true = attendre que la couleur du pixel devient color . false = attendre que la couleur du pixel n'est plus color .
---@param timeout integer Durée maximal à attendre, 0 = infini.
---@param step integer Par exemple si step est 100, la fonction va vérifier le pixel chaque 100ms, mettre une valeur très basse peut augmenter la consommation du CPU.
---@return boolean true = succès. false = le timeout est écoulé ou erreur.
function pixel.wait(x, y, color, equal, timeout, step) end

--- Méthode permettant de mettre en pause le script jusqu'à ce qu'un pixel atteigne (ou cesse d'avoir) une couleur spécifique sur une fenêtre spécifique.
---@param hwnd any Identifiant de la fenêtre à récupérer avec l'une des méthodes window .
---@param x, y integer Les coordonnées du pixel relatives à la fenêtre (et non pas à l'écran).
---@param color string La couleur sous la forme "#XXXXXX".
---@param equal boolean true = attendre que la couleur du pixel devient color . false = attendre que la couleur du pixel n'est plus color .
---@param timeout integer Durée maximal à attendre, 0 = infini.
---@param step integer Par exemple si step est 100, la fonction va vérifier le pixel chaque 100ms, mettre une valeur très basse peut augmenter la consommation du CPU.
---@return boolean true = succès. false = le timeout est écoulé ou erreur.
function pixel.waitInWindow(hwnd, x, y, color, equal, timeout, step) end

_G.pixel = pixel

---@class Frigost_script
local script = {}

--- Méthode permettant de retourner le chemin du dossier contenant le script chargé.
---@return string Le chemin du dossier contenant le script chargé.
function script.folder() end

--- Méthode permettant de charger un script.
---@param path string Le chemin vers le script à charger.
---@param start boolean false = charger le script sans le lancer. true = charger puis lancer le script.
---@return nil
function script.load(path, start) end

--- Méthode permettant de retourner le nom du script chargé.
---@return string Le nom du script chargé.
function script.name() end

--- Méthode permettant de relancer le script.
---@param reload boolean false = relancer le script. true = recharger puis relancer le script.
---@return nil
function script.restart(reload) end

--- Méthode permettant d'arrêter l'exécution du script.
---@return nil
function script.stop() end

_G.script = script

---@class Frigost_sniffer
local sniffer = {}

--- Méthode permettant de savoir si un message est reçu durant les dernières X millisecondes.
---@param name string Le nom du message.
---@param ms integer Par exemple, si ms = 5000, la méthode va vérifier si le message a été reçu durant les 5 dernières secondes. Par exemple, si ms = -1, la méthode va vérifier si le message a été reçu.
---@return any Le dernier message reçu.
function sniffer.get(name, ms) end

--- Méthode permettant de récupérer les messages échangés entre le client et le serveur du jeu. * Les messages échangés entre le client et le serveur du jeu sont gardés dans la mémoire du jeu dans une liste qui peut contenir au maximum 2000 derniers messages, après chaque appel de cette méthode, elle retourne le contenu de cette liste et vide cette liste.
---@return any[] La liste des messages échangés entre le client et le serveur du jeu.
function sniffer.messages() end

--- Méthode permettant d'envoyer un message au serveur du jeu.
---@param name string Le nom du message.
---@param content string Un string JSON représentant le contenu du message.
---@return nil
function sniffer.send(name, content) end

--- Méthode permettant de mettre en pause le script et d'attendre la réception d'un message.
---@param names string Liste des noms des messages. La fonction retourne dès que l'un de ces messages est reçu.
---@param timeout integer Le délai maximal à attendre, en millisecondes.
---@return any Le premier message reçu de la liste names.
function sniffer.wait(names, timeout) end

_G.sniffer = sniffer

---@class Frigost_storage
local storage = {}

--- Méthode permettant de retourner le contenu de l'espace de stockage.
---@return any[] Le contenu de l'espace de stockage.
function storage.content() end

--- Méthode permettant de transférer tout le contenu de l'espace de stockage à l'inventaire, à l'exception des objets spécifiés.
---@param exceptions? integer Liste des identifiants GID des objets à ne pas transférer.
---@return nil
function storage.getAllObjects(exceptions) end

--- Méthode permettant de récupérer des kamas de l'espace de stockage.
---@param quantity integer Quantité des kamas à récupérer.
---@return nil
function storage.getKamas(quantity) end

--- Méthode permettant de récupérer un objet de l'espace de stockage.
---@param gid integer Identifiant GID de l'objet. Si négatif, il correspond au UID de l'objet.
---@param qty? integer La quantité à récupérer.
---@return nil
function storage.getObject(gid, qty) end

--- Méthode permettant de retourner les kamas dans l'espace de stockage.
---@return integer Les kamas dans l'espace de stockage.
function storage.kamas() end

--- Méthode permettant de quitter l'interface ouverte (dialogue, échange, banque ...).
---@return nil
function storage.leave() end

--- Méthode permettant de retourner le nom d'un objet.
---@param gid integer Identifiant GID de l'objet.
---@return string Le nom de l'objet GID .
function storage.objectName(gid) end

--- Méthode permettant de retourner la quantité d'un objet dans l'espace de stockage.
---@param gid integer Identifiant GID de l'objet.
---@param all? boolean false = retourne la quantité du premier objet GID présent dans l'espace de stockage. true = retourne le total des quantités des objets GID présents dans l'espace de stockage.
---@return integer La quantité de l'objet GID .
function storage.objectQuantity(gid, all) end

--- Méthode permettant de retourner le UID d'un objet dans l'espace de stockage.
---@param gid integer Identifiant GID de l'objet.
---@return integer UID l'objet GID . -1 si l'objet est introuvable.
function storage.objectUid(gid) end

--- Méthode permettant de transférer tout son inventaire dans l'espace de stockage, à l'exception des objets spécifiés.
---@param exceptions? integer Liste des identifiants GID des objets à ne pas transférer.
---@return nil
function storage.putAllObjects(exceptions) end

--- Méthode permettant de transférer des kamas dans l'espace de stockage.
---@param quantity integer Quantité des kamas à transférer.
---@return nil
function storage.putKamas(quantity) end

--- Méthode permettant de transférer un objet dans l'espace de stockage.
---@param gid integer Identifiant GID de l'objet. Si négatif, il correspond au UID de l'objet.
---@param qty? integer La quantité à transférer.
---@return nil
function storage.putObject(gid, qty) end

_G.storage = storage

---@class Frigost_web
local web = {}

--- Méthode permettant d'envoyer un message simple via un WebHook Discord.
---@param webhook\_url string Lien WebHook.
---@param message string Le message à afficher.
---@return nil
function web.discordLiteMessage(webhook_url, message) end

--- Méthode permettant d'envoyer un message complet via un WebHook Discord.
---@param webhook\_url string Lien WebHook.
---@param message string JSON complet.
---@return nil
function web.discordMessage(webhook_url, message) end

--- Méthode permettant d'envoyer une requête GET.
---@param url string URL.
---@param ua? string UserAgent à envoyer.
---@param headers? string Headers à envoyer.
---@return boolean En cas d'échec ou timeout.
function web.get(url, ua, headers) end

--- Méthode permettant d'envoyer une requête POST.
---@param url string URL.
---@param data string Les données (POST) au format application/x-www-form-urlencoded.
---@param ua? string UserAgent à envoyer.
---@param headers? string Headers à envoyer.
---@return boolean En cas d'échec ou timeout.
function web.post(url, data, ua, headers) end

--- Méthode permettant l'encodage d'une chaîne de caractères à utiliser dans la partie d'une URL.
---@param input string Chaîne de caractères à encoder.
---@return string Chaîne de caractères (input) encodée.
function web.urlEncode(input) end

_G.web = web

---@class Frigost_window
local window = {}

--- Méthode permettant de récupérer l'identifiant d'une fenêtre du jeu, à utiliser sur pour méthodes de ipc, mouse, keyboard et pixel.
---@param characterId integer Pour récupérer l'identifiant d'une fenêtre du jeu avec l'identifiant du personnage connecté sur cette fenêtre, à récupérer avec cette méthode .
---@return any L'identifiant de la fenêtre du jeu.
function window.getByCharacterId(characterId) end

--- Méthode permettant de récupérer l'identifiant d'une fenêtre du jeu, à utiliser sur pour méthodes de ipc, mouse, keyboard et pixel.
---@param teamNumber integer Numéro de la team.
---@param inTeamIndex integer L'index (l'ordre) du compte dans cette team.
---@return any L'identifiant de la fenêtre du jeu.
function window.getByTeamData(teamNumber, inTeamIndex) end

--- Méthode permettant de récupérer l'identifiant d'une fenêtre du jeu, à utiliser sur pour méthodes de ipc, mouse, keyboard et pixel.
---@param uniqueId integer Identifiant unique à paramétrer ici :
---@return any L'identifiant de la fenêtre du jeu.
function window.getByUniqueId(uniqueId) end

_G.window = window

