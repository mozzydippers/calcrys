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

// TODO: switch to table to save code space
int LONG_CALL GetMaxMovePower(struct BattleStruct *battle, int baseMove, int client)
{
    int species = battle->battlemon[client].species;

    int form = battle->battlemon[client].form_no;

    u32 type = GetAdjustedMoveType(battle, client, baseMove);

    BOOL weakerPower = (type == TYPE_FIGHTING || type == TYPE_POISON || baseMove == MOVE_MULTI_ATTACK);

    switch (baseMove) {
    case MOVE_STRUGGLE:
        return 1;
    // Variable number of strikes
    case MOVE_ARM_THRUST:
        return 70;
    // case MOVE_BARRAGE:
    //     return 0;
    case MOVE_BONE_RUSH:
        return 130;
    case MOVE_BULLET_SEED:
        return 130;
    // case MOVE_COMET_PUNCH:
    //     return 0;
    // case MOVE_DOUBLE_SLAP:
    //     return 0;
    case MOVE_FURY_ATTACK:
        return 90;
    case MOVE_FURY_SWIPES:
        return 100;
    case MOVE_ICICLE_SPEAR:
        return 100;
    case MOVE_PIN_MISSILE:
        return 130;
    case MOVE_ROCK_BLAST:
        return 130;
    case MOVE_SCALE_SHOT:
        return 130;
    // case MOVE_SPIKE_CANNON:
    //     return 0;
    case MOVE_TAIL_SLAP:
        return 130;
    case MOVE_WATER_SHURIKEN:
        return 90;
    // Fixed number of multiple strikes
    case MOVE_BONEMERANG:
        return 130;
    case MOVE_DOUBLE_HIT:
        return 120;
    case MOVE_DOUBLE_IRON_BASH:
        return 140;
    case MOVE_DOUBLE_KICK:
        return 80;
    case MOVE_DRAGON_DARTS:
        return 130;
    case MOVE_DUAL_CHOP:
        return 130;
    case MOVE_DUAL_WINGBEAT:
        return 130;
    case MOVE_GEAR_GRIND:
        return 130;
    case MOVE_SURGING_STRIKES:
        return 130;
    // case MOVE_TRIPLE_DIVE:
    //     return 0;
    // case MOVE_TWIN_BEAM:
    //     return 0;
    // case MOVE_TWINEEDLE:
    //     return 0;
    // Accuracy-dependent multiple strikes
    case MOVE_TRIPLE_AXEL:
        return 140;
    case MOVE_TRIPLE_KICK:
        return 80;
    // case MOVE_POPULATION_BOMB:
    //     return 0;
    // Party-dependent multiple strikes
    case MOVE_BEAT_UP:
        return 100;

    case MOVE_ELECTRO_BALL:
    case MOVE_TERRAIN_PULSE:
        return weakerPower ? 75 : 100;
    case MOVE_STORED_POWER:
        return 130;
    }

    switch (battle->moveTbl[baseMove].effect) {
    case MOVE_EFFECT_HALVE_HP:
    case MOVE_EFFECT_LEVEL_DAMAGE_FLAT:
    case MOVE_EFFECT_COUNTER:
    case MOVE_EFFECT_MIRROR_COAT:
    case MOVE_EFFECT_METAL_BURST:
    case MOVE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL:
    case MOVE_EFFECT_RANDOM_POWER_MAYBE_HEAL:
    case MOVE_EFFECT_BEAT_UP:
    case MOVE_EFFECT_CHANGE_TYPE_WITH_WEATHER:
    case MOVE_EFFECT_FLING:
    case MOVE_EFFECT_INCREASE_POWER_WITH_MORE_STAT_UP:
    case MOVE_EFFECT_HIGHER_POWER_WHEN_LOW_PP:
    case MOVE_EFFECT_10_DAMAGE_FLAT:
    case MOVE_EFFECT_40_DAMAGE_FLAT:
    case MOVE_EFFECT_SPIT_UP:
    case MOVE_EFFECT_NATURAL_GIFT:
    case MOVE_EFFECT_FINAL_GAMBIT:
        return weakerPower ? 75 : 100;
    case MOVE_EFFECT_ONE_HIT_KO:
    case MOVE_EFFECT_POWER_BASED_ON_FRIENDSHIP:
    case MOVE_EFFECT_POWER_BASED_ON_LOW_FRIENDSHIP:
    case MOVE_EFFECT_HEAVY_SLAM:
        return weakerPower ? 90 : 130;
    case MOVE_EFFECT_RANDOM_POWER_10_CASES:
    case MOVE_EFFECT_INCREASE_POWER_WITH_MORE_HP:
        return weakerPower ? 95 : 140;
    case MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP:
    case MOVE_EFFECT_INCREASE_POWER_WITH_WEIGHT:
        return weakerPower ? 100 : 130;
    }

    // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-8467857
    // - GMax Moves and Max Moves derived from hacked Max moves all end up with "---" base power (including Max Flare which has BP 100).
    if (MoveIsMaxMove(baseMove)) {
        return 1;
    }

    int power = battle->moveTbl[baseMove].power;

    switch (power) {
    case 0 ... 40:
        return weakerPower ? 70 : 90;
    case 45 ... 50:
        return weakerPower ? 75 : 100;
    case 55 ... 60:
        return weakerPower ? 80 : 110;
    case 65 ... 70:
        return weakerPower ? 85 : 120;
    case 75 ... 100:
        return weakerPower ? 90 : 130;
    case 110 ... 140:
        return weakerPower ? 95 : 140;
    case 150 ... 250:
    default:
        return weakerPower ? 100 : 150;
    }

    GF_ASSERT_INTERNAL();
    return 0;
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
