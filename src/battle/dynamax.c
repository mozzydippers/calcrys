#include "../../include/battle.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/file.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/pokemon.h"
#include "../../include/sprite.h"
#include "../../include/types.h"

BOOL LONG_CALL IsInPowerSpot()
{
    return TRUE;
}

BOOL LONG_CALL AICheckCanDynamax(struct BattleStruct *battle, int client)
{
#ifdef DEBUG_DYNAMAX_LOGIC
    debug_printf("In AICheckCanDynamax\n");
#endif

    int species = battle->battlemon[client].species;

    int command = battle->playerActions[client][3];

    int moveID = GetBattlerSelectedMove(battle, client);

    struct BattleMove move = battle->moveTbl[moveID];

    if (newBS.SideDynamax[client]) {
        return FALSE;
    }

    if (battle->playerActions[client][3] != SELECT_FIGHT_COMMAND) {
        return FALSE;
    }

    // No known data for Gen 9+ moves
    if (command == SELECT_FIGHT_COMMAND) {
        if (moveID >= MOVE_TERA_BLAST) {
            return FALSE;
        }

        BOOL canDynamax = FALSE;

        if (IsInPowerSpot() && species != SPECIES_ZACIAN && species != SPECIES_ZAMAZENTA && species != SPECIES_ETERNATUS) {
            canDynamax = TRUE;
        }

        // For AI only
        if (move.power && canDynamax) {
            return TRUE;
        }
    }
    return FALSE;
}

int LONG_CALL GetMaxMoveToBeUsed(struct BattleStruct *battle, int baseMove, int client)
{
#ifdef DEBUG_DYNAMAX_LOGIC
    debug_printf("In GetMaxMoveToBeUsed\n");
#endif

    int maxMove = 0;

    int species = battle->battlemon[client].species;

    int form = battle->battlemon[client].form_no;

    BOOL hasGigantamaxFactor = FALSE;

    u32 type = GetAdjustedMoveType(battle, client, baseMove);

    if (battle->moveTbl[baseMove].split == SPLIT_STATUS) {
        return MOVE_MAX_GUARD;
    }

    if (hasGigantamaxFactor) {
        if (species == SPECIES_VENUSAUR && type == TYPE_GRASS) {
            return MOVE_G_MAX_VINE_LASH;
        }
        if (species == SPECIES_CHARIZARD && type == TYPE_FIRE) {
            return MOVE_G_MAX_WILDFIRE;
        }
        if (species == SPECIES_BLASTOISE && type == TYPE_WATER) {
            return MOVE_G_MAX_CANNONADE;
        }
        if (species == SPECIES_BUTTERFREE && type == TYPE_BUG) {
            return MOVE_G_MAX_BEFUDDLE;
        }
        if (species == SPECIES_PIKACHU && type == TYPE_ELECTRIC) {
            return MOVE_G_MAX_VOLT_CRASH;
        }
        if (species == SPECIES_MEOWTH && type == TYPE_NORMAL) {
            return MOVE_G_MAX_GOLD_RUSH;
        }
        if (species == SPECIES_MACHAMP && type == TYPE_FIGHTING) {
            return MOVE_G_MAX_CHI_STRIKE;
        }
        if (species == SPECIES_GENGAR && type == TYPE_GHOST) {
            return MOVE_G_MAX_TERROR;
        }
        if (species == SPECIES_KINGLER && type == TYPE_WATER) {
            return MOVE_G_MAX_FOAM_BURST;
        }
        if (species == SPECIES_LAPRAS && type == TYPE_ICE) {
            return MOVE_G_MAX_RESONANCE;
        }
        if (species == SPECIES_EEVEE && type == TYPE_NORMAL) {
            return MOVE_G_MAX_CUDDLE;
        }
        if (species == SPECIES_SNORLAX && type == TYPE_NORMAL) {
            return MOVE_G_MAX_REPLENISH;
        }
        if (species == SPECIES_GARBODOR && type == TYPE_POISON) {
            return MOVE_G_MAX_MALODOR;
        }
        if (species == SPECIES_MELMETAL && type == TYPE_STEEL) {
            return MOVE_G_MAX_MELTDOWN;
        }
        if (species == SPECIES_RILLABOOM && type == TYPE_GRASS) {
            return MOVE_G_MAX_DRUM_SOLO;
        }
        if (species == SPECIES_CINDERACE && type == TYPE_FIRE) {
            return MOVE_G_MAX_FIREBALL;
        }
        if (species == SPECIES_INTELEON && type == TYPE_WATER) {
            return MOVE_G_MAX_HYDROSNIPE;
        }
        if (species == SPECIES_CORVIKNIGHT && type == TYPE_FLYING) {
            return MOVE_G_MAX_WIND_RAGE;
        }
        if (species == SPECIES_ORBEETLE && type == TYPE_PSYCHIC) {
            return MOVE_G_MAX_GRAVITAS;
        }
        if (species == SPECIES_DREDNAW && type == TYPE_WATER) {
            return MOVE_G_MAX_STONESURGE;
        }
        if (species == SPECIES_COALOSSAL && type == TYPE_ROCK) {
            return MOVE_G_MAX_VOLCALITH;
        }
        if (species == SPECIES_FLAPPLE && type == TYPE_GRASS) {
            return MOVE_G_MAX_TARTNESS;
        }
        if (species == SPECIES_APPLETUN && type == TYPE_GRASS) {
            return MOVE_G_MAX_SWEETNESS;
        }
        if (species == SPECIES_SANDACONDA && type == TYPE_GROUND) {
            return MOVE_G_MAX_SANDBLAST;
        }
        if (species == SPECIES_TOXTRICITY && type == TYPE_ELECTRIC) {
            return MOVE_G_MAX_STUN_SHOCK;
        }
        if (species == SPECIES_CENTISKORCH && type == TYPE_FIRE) {
            return MOVE_G_MAX_CENTIFERNO;
        }
        if (species == SPECIES_HATTERENE && type == TYPE_FAIRY) {
            return MOVE_G_MAX_SMITE;
        }
        if (species == SPECIES_GRIMMSNARL && type == TYPE_DARK) {
            return MOVE_G_MAX_SNOOZE;
        }
        if (species == SPECIES_ALCREMIE && type == TYPE_FAIRY) {
            return MOVE_G_MAX_FINALE;
        }
        if (species == SPECIES_COPPERAJAH && type == TYPE_STEEL) {
            return MOVE_G_MAX_STEELSURGE;
        }
        if (species == SPECIES_DURALUDON && type == TYPE_DRAGON) {
            return MOVE_G_MAX_DEPLETION;
        }
        // Single Strike
        if (species == SPECIES_URSHIFU && type == TYPE_DARK && (form == 0 || form == 2)) {
            return MOVE_G_MAX_ONE_BLOW;
        }
        // Rapid Strike
        if (species == SPECIES_URSHIFU && type == TYPE_WATER && (form == 1 || form == 3)) {
            return MOVE_G_MAX_RAPID_FLOW;
        }
    }

#ifdef DEBUG_DYNAMAX_LOGIC
    debug_printf("baseMove: %d\n", baseMove);
#endif

    if (baseMove == MOVE_HIDDEN_POWER || baseMove == MOVE_JUDGMENT) {
        maxMove = MOVE_MAX_STRIKE;
    } else {
        switch (type) {
        case TYPE_NORMAL:
            return MOVE_MAX_STRIKE;
        case TYPE_FIGHTING:
            return MOVE_MAX_KNUCKLE;
        case TYPE_FLYING:
            return MOVE_MAX_AIRSTREAM;
        case TYPE_POISON:
            return MOVE_MAX_OOZE;
        case TYPE_GROUND:
            return MOVE_MAX_QUAKE;
        case TYPE_ROCK:
            return MOVE_MAX_ROCKFALL;
        case TYPE_BUG:
            return MOVE_MAX_FLUTTERBY;
        case TYPE_GHOST:
            return MOVE_MAX_PHANTASM;
        case TYPE_STEEL:
            return MOVE_MAX_STEELSPIKE;
        case TYPE_FIRE:
            return MOVE_MAX_FLARE;
        case TYPE_WATER:
            return MOVE_MAX_GEYSER;
        case TYPE_GRASS:
            return MOVE_MAX_OVERGROWTH;
        case TYPE_ELECTRIC:
            return MOVE_MAX_LIGHTNING;
        case TYPE_PSYCHIC:
            return MOVE_MAX_MINDSTORM;
        case TYPE_ICE:
            return MOVE_MAX_HAILSTORM;
        case TYPE_DRAGON:
            return MOVE_MAX_WYRMWIND;
        case TYPE_DARK:
            return MOVE_MAX_DARKNESS;
        case TYPE_FAIRY:
            return MOVE_MAX_STARFALL;
        default:
            GF_ASSERT_INTERNAL();
            break;
        }
    }

    return MOVE_NONE;
}

BOOL LONG_CALL IsMoveBlockedByMaxGuard(int move)
{
    switch (move) {
    case MOVE_BLOCK:
    case MOVE_FLOWER_SHIELD:
    case MOVE_GEAR_UP:
    case MOVE_MAGNETIC_FLUX:
    case MOVE_PHANTOM_FORCE:
    case MOVE_PSYCH_UP:
    case MOVE_SHADOW_FORCE:
    case MOVE_TEATIME:
    case MOVE_TRANSFORM:
        return TRUE;
    default:
        return FALSE;
    }
}
