#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/pokemon.h"
#include "../../include/mega.h"
#include "../../include/sprite.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/item.h"
#include "../../include/constants/file.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"

BOOL LONG_CALL AICheckCanUseZMove(struct BattleStruct *battle, int client) {
#ifdef DEBUG_Z_MOVE_LOGIC
    debug_printf("In AICheckCanUseZMove\n");
#endif

    int species = battle->battlemon[client].species;

    int form = battle->battlemon[client].form_no;

    int item = battle->battlemon[client].item;

    int command = battle->playerActions[client][3];

    int moveID = GetBattlerSelectedMove(battle, client);

    struct BattleMove move = battle->moveTbl[moveID];

    if (newBS.SideZMove[client])
        return FALSE;

    if (battle->playerActions[client][3] != SELECT_FIGHT_COMMAND)
        return FALSE;

    // No known data for Gen 8+ moves
    if (command == SELECT_FIGHT_COMMAND) {
        if (moveID > MOVE_DOUBLE_IRON_BASH) {
            return FALSE;
        }

        BOOL canUseZMove = FALSE;
        if ((move.type == TYPE_NORMAL && item == ITEM_NORMALIUM_Z_HELD)
        || (move.type == TYPE_FIGHTING && item == ITEM_FIGHTINIUM_Z_HELD)
        || (move.type == TYPE_FLYING && item == ITEM_FLYINIUM_Z_HELD)
        || (move.type == TYPE_POISON && item == ITEM_POISONIUM_Z_HELD)
        || (move.type == TYPE_GROUND && item == ITEM_GROUNDIUM_Z_HELD)
        || (move.type == TYPE_ROCK && item == ITEM_ROCKIUM_Z_HELD)
        || (move.type == TYPE_BUG && item == ITEM_BUGINIUM_Z_HELD)
        || (move.type == TYPE_GHOST && item == ITEM_GHOSTIUM_Z_HELD)
        || (move.type == TYPE_STEEL && item == ITEM_STEELIUM_Z_HELD)
        || (move.type == TYPE_FIRE && item == ITEM_FIRIUM_Z_HELD)
        || (move.type == TYPE_WATER && item == ITEM_WATERIUM_Z_HELD)
        || (move.type == TYPE_GRASS && item == ITEM_GRASSIUM_Z_HELD)
        || (move.type == TYPE_ELECTRIC && item == ITEM_ELECTRIUM_Z_HELD)
        || (move.type == TYPE_PSYCHIC && item == ITEM_PSYCHIUM_Z_HELD)
        || (move.type == TYPE_ICE && item == ITEM_ICIUM_Z_HELD)
        || (move.type == TYPE_DRAGON && item == ITEM_DRAGONIUM_Z_HELD)
        || (move.type == TYPE_DARK && item == ITEM_DARKINIUM_Z_HELD)
        || (move.type == TYPE_FAIRY && item == ITEM_FAIRIUM_Z_HELD)
        // Only regular Pikachu can use Catastropika
        || (moveID == MOVE_VOLT_TACKLE && item == ITEM_PIKANIUM_Z_HELD && species == SPECIES_PIKACHU && form == 0)
        || (moveID == MOVE_THUNDERBOLT && item == ITEM_PIKASHUNIUM_Z_HELD && species == SPECIES_PIKACHU && form >= 7 && form <= 14)
        || (moveID == MOVE_THUNDERBOLT && item == ITEM_ALORAICHIUM_Z_HELD && species == SPECIES_RAICHU && form == 1)
        || (moveID == MOVE_LAST_RESORT && item == ITEM_EEVIUM_Z_HELD && species == SPECIES_EEVEE)
        || (moveID == MOVE_GIGA_IMPACT && item == ITEM_SNORLIUM_Z_HELD && species == SPECIES_SNORLAX)
        || (moveID == MOVE_PSYCHIC && item == ITEM_MEWNIUM_Z_HELD && species == SPECIES_MEW)
        || (moveID == MOVE_SPIRIT_SHACKLE && item == ITEM_DECIDIUM_Z_HELD && species == SPECIES_DECIDUEYE)
        || (moveID == MOVE_DARKEST_LARIAT && item == ITEM_INCINIUM_Z_HELD && species == SPECIES_INCINEROAR)
        || (moveID == MOVE_SPARKLING_ARIA && item == ITEM_PRIMARIUM_Z_HELD && species == SPECIES_PRIMARINA)
        || (moveID == MOVE_PLAY_ROUGH && item == ITEM_MIMIKIUM_Z_ITEM && species == SPECIES_MIMIKYU)
        || (moveID == MOVE_CLANGING_SCALES && item == ITEM_KOMMONIUM_Z_ITEM && species == SPECIES_KOMMO_O)
        || (moveID == MOVE_NATURES_MADNESS && item == ITEM_TAPUNIUM_Z_HELD
            && (species == SPECIES_TAPU_KOKO || species == SPECIES_TAPU_LELE || species == SPECIES_TAPU_BULU || species == SPECIES_TAPU_FINI))
        || (moveID == MOVE_SUNSTEEL_STRIKE && item == ITEM_SOLGANIUM_Z_ITEM
            && (species == SPECIES_SOLGALEO || (species == SPECIES_NECROZMA && form == 1)))
        || (moveID == MOVE_MOONGEIST_BEAM && item == ITEM_LUNALIUM_Z_ITEM
            && (species == SPECIES_LUNALA || (species == SPECIES_NECROZMA && form == 2)))
        || (moveID == MOVE_PHOTON_GEYSER && item == ITEM_ULTRANECROZIUM_Z_ITEM && (species == SPECIES_NECROZMA && (form == 3 || form == 4)))
        || (moveID == MOVE_SPECTRAL_THIEF && item == ITEM_MARSHADIUM_Z_HELD && species == SPECIES_MARSHADOW)) {
            canUseZMove = TRUE;
        }

        // For AI only
        if (move.power && canUseZMove) {
            return TRUE;
        }
    }
    return FALSE;
}

int LONG_CALL GetZMoveToBeUsed(struct BattleStruct *battle, int baseMove, int client) {
#ifdef DEBUG_Z_MOVE_LOGIC
    debug_printf("In GetZMoveToBeUsed\n");
#endif

    int zMove = 0;

    int species = battle->battlemon[client].species;

    int form = battle->battlemon[client].form_no;

    int item = battle->battlemon[client].item;

    if (baseMove == MOVE_VOLT_TACKLE && item == ITEM_PIKANIUM_Z_HELD && species == SPECIES_PIKACHU && form == 0) {
        return MOVE_CATASTROPIKA;
    }
    if (baseMove == MOVE_THUNDERBOLT && item == ITEM_PIKASHUNIUM_Z_HELD && species == SPECIES_PIKACHU && form >= 7 && form <= 14) {
        return MOVE_10_000_000_VOLT_THUNDERBOLT;
    }
    if (baseMove == MOVE_THUNDERBOLT && item == ITEM_ALORAICHIUM_Z_HELD && species == SPECIES_RAICHU && form == 1) {
        return MOVE_STOKED_SPARKSURFER;
    }
    if (baseMove == MOVE_LAST_RESORT && item == ITEM_EEVIUM_Z_HELD && species == SPECIES_EEVEE) {
        return MOVE_EXTREME_EVOBOOST;
    }
    if (baseMove == MOVE_GIGA_IMPACT && item == ITEM_SNORLIUM_Z_HELD && species == SPECIES_SNORLAX) {
        return MOVE_PULVERIZING_PANCAKE;
    }
    if (baseMove == MOVE_PSYCHIC && item == ITEM_MEWNIUM_Z_HELD && species == SPECIES_MEW) {
        return MOVE_GENESIS_SUPERNOVA;
    }
    if (baseMove == MOVE_SPIRIT_SHACKLE && item == ITEM_DECIDIUM_Z_HELD && species == SPECIES_DECIDUEYE) {
        return MOVE_SINISTER_ARROW_RAID;
    }
    if (baseMove == MOVE_DARKEST_LARIAT && item == ITEM_INCINIUM_Z_HELD && species == SPECIES_INCINEROAR) {
        return MOVE_MALICIOUS_MOONSAULT;
    }
    if (baseMove == MOVE_SPARKLING_ARIA && item == ITEM_PRIMARIUM_Z_HELD && species == SPECIES_PRIMARINA) {
        return MOVE_OCEANIC_OPERETTA;
    }
    if (baseMove == MOVE_STONE_EDGE && item == ITEM_LYCANIUM_Z_ITEM && species == SPECIES_LYCANROC) {
        return MOVE_SPLINTERED_STORMSHARDS;
    }
    if (baseMove == MOVE_PLAY_ROUGH && item == ITEM_MIMIKIUM_Z_ITEM && species == SPECIES_MIMIKYU) {
        return MOVE_LETS_SNUGGLE_FOREVER;
    }
    if (baseMove == MOVE_CLANGING_SCALES && item == ITEM_KOMMONIUM_Z_ITEM && species == SPECIES_KOMMO_O) {
        return MOVE_CLANGOROUS_SOULBLAZE;
    }
    if (baseMove == MOVE_NATURES_MADNESS && item == ITEM_TAPUNIUM_Z_HELD && (species == SPECIES_TAPU_KOKO || species == SPECIES_TAPU_LELE || species == SPECIES_TAPU_BULU || species == SPECIES_TAPU_FINI)) {
        return MOVE_GUARDIAN_OF_ALOLA;
    }
    if (baseMove == MOVE_SUNSTEEL_STRIKE && item == ITEM_SOLGANIUM_Z_ITEM && (species == SPECIES_SOLGALEO || (species == SPECIES_NECROZMA && form == 1))) {
        return MOVE_SEARING_SUNRAZE_SMASH;
    }
    if (baseMove == MOVE_MOONGEIST_BEAM && item == ITEM_LUNALIUM_Z_ITEM && (species == SPECIES_LUNALA || (species == SPECIES_NECROZMA && form == 2))) {
        return MOVE_MENACING_MOONRAZE_MAELSTROM;
    }
    if (baseMove == MOVE_PHOTON_GEYSER && item == ITEM_ULTRANECROZIUM_Z_ITEM && (species == SPECIES_NECROZMA && (form == 3 || form == 4))) {
        return MOVE_LIGHT_THAT_BURNS_THE_SKY;
    }
    if (baseMove == MOVE_SPECTRAL_THIEF && item == ITEM_MARSHADIUM_Z_HELD && species == SPECIES_MARSHADOW) {
        return MOVE_SOUL_STEALING_7_STAR_STRIKE;
    }

#ifdef DEBUG_Z_MOVE_LOGIC
    debug_printf("baseMove: %d\n", baseMove);
#endif

    switch (GetAdjustedMoveType(battle, battle->attack_client, baseMove)) {
        case TYPE_NORMAL:
            zMove = MOVE_BREAKNECK_BLITZ_PHYSICAL;
            break;
        case TYPE_FIGHTING:
            zMove = MOVE_ALL_OUT_PUMMELING_PHYSICAL;
            break;
        case TYPE_FLYING:
            zMove = MOVE_SUPERSONIC_SKYSTRIKE_PHYSICAL;
            break;
        case TYPE_POISON:
            zMove = MOVE_ACID_DOWNPOUR_PHYSICAL;
            break;
        case TYPE_GROUND:
            zMove = MOVE_TECTONIC_RAGE_PHYSICAL;
            break;
        case TYPE_ROCK:
            zMove = MOVE_CONTINENTAL_CRUSH_PHYSICAL;
            break;
        case TYPE_BUG:
            zMove = MOVE_SAVAGE_SPIN_OUT_PHYSICAL;
            break;
        case TYPE_GHOST:
            zMove = MOVE_NEVER_ENDING_NIGHTMARE_PHYSICAL;
            break;
        case TYPE_STEEL:
            zMove = MOVE_CORKSCREW_CRASH_PHYSICAL;
            break;
        case TYPE_FIRE:
            zMove = MOVE_INFERNO_OVERDRIVE_PHYSICAL;
            break;
        case TYPE_WATER:
            zMove = MOVE_HYDRO_VORTEX_PHYSICAL;
            break;
        case TYPE_GRASS:
            zMove = MOVE_BLOOM_DOOM_PHYSICAL;
            break;
        case TYPE_ELECTRIC:
            zMove = MOVE_GIGAVOLT_HAVOC_PHYSICAL;
            break;
        case TYPE_PSYCHIC:
            zMove = MOVE_SHATTERED_PSYCHE_PHYSICAL;
            break;
        case TYPE_ICE:
            zMove = MOVE_SUBZERO_SLAMMER_PHYSICAL;
            break;
        case TYPE_DRAGON:
            zMove = MOVE_DEVASTATING_DRAKE_PHYSICAL;
            break;
        case TYPE_DARK:
            zMove = MOVE_BLACK_HOLE_ECLIPSE_PHYSICAL;
            break;
        case TYPE_FAIRY:
            zMove = MOVE_TWINKLE_TACKLE_PHYSICAL;
            break;

        default:
            GF_ASSERT_INTERNAL();
            break;
    }
    if (battle->moveTbl[baseMove].split == SPLIT_SPECIAL) {
        zMove += 1;
    }

#ifdef DEBUG_Z_MOVE_LOGIC
    debug_printf("zMove: %d\n", zMove);
#endif

    return zMove;
}

int LONG_CALL GetZMovePower(struct BattleStruct *battle, int baseMove, int client) {
    int species = battle->battlemon[client].species;

    int form = battle->battlemon[client].form_no;

    int item = battle->battlemon[client].item;

    if (baseMove == MOVE_VOLT_TACKLE && item == ITEM_PIKANIUM_Z_HELD && species == SPECIES_PIKACHU && form == 0) {
        return 210; // MOVE_CATASTROPIKA
    }
    if (baseMove == MOVE_THUNDERBOLT && item == ITEM_PIKASHUNIUM_Z_HELD && species == SPECIES_PIKACHU && form >= 7 && form <= 14) {
        return 195; // MOVE_10_000_000_VOLT_THUNDERBOLT
    }
    if (baseMove == MOVE_THUNDERBOLT && item == ITEM_ALORAICHIUM_Z_HELD && species == SPECIES_RAICHU && form == 1) {
        return 175; // MOVE_STOKED_SPARKSURFER
    }
    if (baseMove == MOVE_LAST_RESORT && item == ITEM_EEVIUM_Z_HELD && species == SPECIES_EEVEE) {
        // Should not enter damage calculation
        GF_ASSERT_INTERNAL(); // MOVE_EXTREME_EVOBOOST
        return 0;
    }
    if (baseMove == MOVE_GIGA_IMPACT && item == ITEM_SNORLIUM_Z_HELD && species == SPECIES_SNORLAX) {
        return 210; // MOVE_PULVERIZING_PANCAKE
    }
    if (baseMove == MOVE_PSYCHIC && item == ITEM_MEWNIUM_Z_HELD && species == SPECIES_MEW) {
        return 185; // MOVE_GENESIS_SUPERNOVA
    }
    if (baseMove == MOVE_SPIRIT_SHACKLE && item == ITEM_DECIDIUM_Z_HELD && species == SPECIES_DECIDUEYE) {
        return 180; // MOVE_SINISTER_ARROW_RAID
    }
    if (baseMove == MOVE_DARKEST_LARIAT && item == ITEM_INCINIUM_Z_HELD && species == SPECIES_INCINEROAR) {
        return 180; // MOVE_MALICIOUS_MOONSAULT
    }
    if (baseMove == MOVE_SPARKLING_ARIA && item == ITEM_PRIMARIUM_Z_HELD && species == SPECIES_PRIMARINA) {
        return 195; // MOVE_OCEANIC_OPERETTA
    }
    if (baseMove == MOVE_STONE_EDGE && item == ITEM_LYCANIUM_Z_ITEM && species == SPECIES_LYCANROC) {
        return 190; // MOVE_SPLINTERED_STORMSHARDS
    }
    if (baseMove == MOVE_PLAY_ROUGH && item == ITEM_MIMIKIUM_Z_ITEM && species == SPECIES_MIMIKYU) {
        return 190; // MOVE_LETS_SNUGGLE_FOREVER
    }
    if (baseMove == MOVE_CLANGING_SCALES && item == ITEM_KOMMONIUM_Z_ITEM && species == SPECIES_KOMMO_O) {
        return 185; // MOVE_CLANGOROUS_SOULBLAZE
    }
    if (baseMove == MOVE_NATURES_MADNESS && item == ITEM_TAPUNIUM_Z_HELD && (species == SPECIES_TAPU_KOKO || species == SPECIES_TAPU_LELE || species == SPECIES_TAPU_BULU || species == SPECIES_TAPU_FINI)) {
        // Should not enter damage calculation
        GF_ASSERT_INTERNAL(); // MOVE_GUARDIAN_OF_ALOLA
        return 0;
    }
    if (baseMove == MOVE_SUNSTEEL_STRIKE && item == ITEM_SOLGANIUM_Z_ITEM && (species == SPECIES_SOLGALEO || (species == SPECIES_NECROZMA && form == 1))) {
        return 200; // MOVE_SEARING_SUNRAZE_SMASH
    }
    if (baseMove == MOVE_MOONGEIST_BEAM && item == ITEM_LUNALIUM_Z_ITEM && (species == SPECIES_LUNALA || (species == SPECIES_NECROZMA && form == 2))) {
        return 200; // MOVE_MENACING_MOONRAZE_MAELSTROM
    }
    if (baseMove == MOVE_PHOTON_GEYSER && item == ITEM_ULTRANECROZIUM_Z_ITEM && (species == SPECIES_NECROZMA && (form == 3 || form == 4))) {
        return 200; // MOVE_LIGHT_THAT_BURNS_THE_SKY
    }
    if (baseMove == MOVE_SPECTRAL_THIEF && item == ITEM_MARSHADIUM_Z_HELD && species == SPECIES_MARSHADOW) {
        return 195; // MOVE_SOUL_STEALING_7_STAR_STRIKE
    }

    switch (baseMove) {
        case MOVE_MEGA_DRAIN:
            return 120;
            break;
        case MOVE_WEATHER_BALL:
        case MOVE_HEX:
            return 160;
            break;
        case MOVE_V_CREATE:
            return 220;
            break;
        case MOVE_FLYING_PRESS:
            return 170;
            break;
        case MOVE_CORE_ENFORCER:
            return 140;
            break;

        default:
            break;
    }

    int power = battle->moveTbl[baseMove].power;

    switch (power) {
        case 0 ... 55:
            return 100;
            break;
        case 60 ... 65:
            return 120;
            break;
        case 70 ... 75:
            return 140;
            break;
        case 80 ... 85:
            return 160;
            break;
        case 90 ... 95:
            return 175;
            break;
        case 100:
            return 180;
            break;
        case 110:
            return 185;
            break;
        case 120 ... 125:
            return 190;
            break;
        case 130:
            return 195;
            break;

        default:
            if (power >= 140) {
                return 200;
            }
            GF_ASSERT_INTERNAL();
            break;
    }

    GF_ASSERT_INTERNAL();
    return 0;
}
