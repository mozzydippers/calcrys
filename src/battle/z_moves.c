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

    u16 mon = battle->battlemon[client].species;

    // TODO check item
    u16 item = battle->battlemon[client].item;

    int command = battle->playerActions[client][3];

    int moveID = GetBattlerSelectedMove(battle, client);

    struct BattleMove move = battle->moveTbl[moveID];

    if (newBS.SideZMove[client])
        return FALSE;

    if (battle->playerActions[client][3] != SELECT_FIGHT_COMMAND)
        return FALSE;

    if (command == SELECT_FIGHT_COMMAND) {
        if (moveID > MOVE_DOUBLE_IRON_BASH) {
            return FALSE;
        }

        BOOL canUseZMove = FALSE;
        // TODO wait for new items
        if (move.type == TYPE_NORMAL && item == ITEM_DATA_CARD_01) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_FIGHTING && item == ITEM_DATA_CARD_02) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_FLYING && item == ITEM_DATA_CARD_03) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_POISON && item == ITEM_DATA_CARD_04) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_ROCK && item == ITEM_DATA_CARD_05) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_BUG && item == ITEM_DATA_CARD_06) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_GHOST && item == ITEM_DATA_CARD_07) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_STEEL && item == ITEM_DATA_CARD_08) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_FIRE && item == ITEM_DATA_CARD_09) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_WATER && item == ITEM_DATA_CARD_10) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_GRASS && item == ITEM_DATA_CARD_11) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_ELECTRIC && item == ITEM_DATA_CARD_12) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_PSYCHIC && item == ITEM_DATA_CARD_13) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_ICE && item == ITEM_DATA_CARD_14) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_DRAGON && item == ITEM_DATA_CARD_15) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_DARK && item == ITEM_DATA_CARD_16) {
            canUseZMove = TRUE;
        }
        if (move.type == TYPE_FAIRY && item == ITEM_DATA_CARD_17) {
            canUseZMove = TRUE;
        }

        // For AI only
        if (move.power && canUseZMove) {
            return TRUE;
        }
    }
    return FALSE;
}

int LONG_CALL GetZMoveToBeUsed(struct BattleStruct *battle, int baseMove) {
#ifdef DEBUG_Z_MOVE_LOGIC
    debug_printf("In GetZMoveToBeUsed\n");
#endif

    int zMove = 0;

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
        case TYPE_FAIRY:
            zMove = MOVE_TWINKLE_TACKLE_PHYSICAL;
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

int LONG_CALL GetZMovePower(struct BattleStruct *battle, int baseMove, int item) {
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

    return 0;
    GF_ASSERT_INTERNAL();
}
