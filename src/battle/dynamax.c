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
#ifdef DEBUG_BATTLE_SCENARIOS
#include "test_battle.h"
#endif

BOOL LONG_CALL IsInPowerSpot()
{
    return TRUE;
}

BOOL LONG_CALL AICheckCanDynamax(struct BattleSystem *bsys, struct BattleStruct *ctx, int client)
{
#ifdef DEBUG_DYNAMAX_LOGIC
    debug_printf("In AICheckCanDynamax\n");
#endif

    int species = ctx->battlemon[client].species;

    int command = ctx->playerActions[client][3];

    int moveID = GetBattlerSelectedMove(ctx, client);

#ifndef DEBUG_BATTLE_SCENARIOS
    struct BattleMove move = ctx->moveTbl[moveID];
    BOOL canDynamax = FALSE;
#endif

    if (newBS.SideDynamax[client]) {
#ifdef DEBUG_DYNAMAX_LOGIC
        debug_printf("Already Dynamaxed\n");
#endif
        return FALSE;
    }

    if (command != SELECT_FIGHT_COMMAND) {
#ifdef DEBUG_DYNAMAX_LOGIC
        debug_printf("Not attacking\n");
#endif
        return FALSE;
    }

    // No known data for Gen 9+ moves
    if (moveID >= MOVE_TERA_BLAST) {
#ifdef DEBUG_DYNAMAX_LOGIC
        debug_printf("Gen 9+ move\n");
#endif
        return FALSE;
    }

    if (IS_CLIENT_IN_ILLUSION_NO_ABILITY(bsys, client)) {
        struct PartyPokemon *illusionMon = Battle_GetClientPartyMon(bsys, client, gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(ctx, client)]);

        u32 illusionSpecies = GetMonData(illusionMon, MON_DATA_SPECIES, NULL);

        if (illusionSpecies == SPECIES_ZACIAN || illusionSpecies == SPECIES_ZAMAZENTA || illusionSpecies == SPECIES_ETERNATUS) {
#ifdef DEBUG_DYNAMAX_LOGIC
            debug_printf("Illusioned as species that cannot Dynamax\n");
#endif
            return FALSE;
        }
    }

    if (IsInPowerSpot() && species != SPECIES_ZACIAN && species != SPECIES_ZAMAZENTA && species != SPECIES_ETERNATUS) {
#ifdef DEBUG_DYNAMAX_LOGIC
        debug_printf("Can Dynamax\n");
#endif
#ifndef DEBUG_BATTLE_SCENARIOS
        canDynamax = TRUE;
#endif
    } else {
#ifdef DEBUG_DYNAMAX_LOGIC
        debug_printf("Not in Power Spot or species cannot Dynamax\n");
#endif
    }

#ifdef DEBUG_BATTLE_SCENARIOS
    struct TestBattleScenario *scenario = TestBattle_GetCurrentScenario();
    if (scenario->opponentDynamax) {
        return TRUE;
    }
#else
    // For AI only
    if (move.power && canDynamax) {
        struct PartyPokemon *mon = BattleWorkPokemonParamGet(bsys, client, ctx->sel_mons_no[client]);
        BOOL hasGigantamaxFactor = GetMonData(mon, MON_DATA_CAN_GIGANTAMAX, NULL);
#ifdef DEBUG_DYNAMAX_LOGIC
        debug_printf("Return %d\n", hasGigantamaxFactor);
#endif
        // return FALSE;
        return hasGigantamaxFactor;
    }
#endif

    return FALSE;
}

u32 LONG_CALL GetDynamaxedState(u32 species, u32 form, BOOL canGigantamax)
{
    if (!canGigantamax) {
        return form;
    }

    switch (species) {
    case SPECIES_VENUSAUR:
        return 2;
        break;
    case SPECIES_CHARIZARD:
        return 3;
        break;
    case SPECIES_BLASTOISE:
        return 2;
        break;
    case SPECIES_BUTTERFREE:
        return 1;
        break;
    case SPECIES_PIKACHU:
        return 16;
        break;
    case SPECIES_MEOWTH:
        return 3;
        break;
    case SPECIES_GENGAR:
        return 2;
        break;
    case SPECIES_KINGLER:
        return 1;
        break;
    case SPECIES_LAPRAS:
        return 1;
        break;
    case SPECIES_EEVEE:
        return 2;
        break;
    case SPECIES_SNORLAX:
        return 1;
        break;
    case SPECIES_GARBODOR:
        return 1;
        break;
    case SPECIES_MELMETAL:
        return 1;
        break;
    case SPECIES_RILLABOOM:
        return 1;
        break;
    case SPECIES_CINDERACE:
        return 1;
        break;
    case SPECIES_INTELEON:
        return 1;
        break;
    case SPECIES_CORVIKNIGHT:
        return 1;
        break;
    case SPECIES_ORBEETLE:
        return 1;
        break;
    case SPECIES_DREDNAW:
        return 1;
        break;
    case SPECIES_COALOSSAL:
        return 1;
        break;
    case SPECIES_FLAPPLE:
        return 1;
        break;
    case SPECIES_APPLETUN:
        return 1;
        break;
    case SPECIES_SANDACONDA:
        return 1;
        break;
    case SPECIES_TOXTRICITY:
        return form == 0 ? 2 : 3;
        break;
    case SPECIES_CENTISKORCH:
        return 1;
        break;
    case SPECIES_HATTERENE:
        return 1;
        break;
    case SPECIES_GRIMMSNARL:
        return 1;
        break;
    case SPECIES_ALCREMIE:
        return 7;
        break;
    case SPECIES_COPPERAJAH:
        return 1;
        break;
    case SPECIES_DURALUDON:
        return 1;
        break;
    case SPECIES_URSHIFU:
        return form == 0 ? 2 : 3;
        break;
    default:
        return form;
        break;
    }
}

int LONG_CALL GetMaxMoveToBeUsed(struct BattleSystem *bsys, struct BattleStruct *ctx, int baseMove, int client)
{
#ifdef DEBUG_DYNAMAX_LOGIC
    // debug_printf("In GetMaxMoveToBeUsed\n");
#endif

    int species = ctx->battlemon[client].species;

    int form = ctx->battlemon[client].form_no;

    struct PartyPokemon *mon = BattleWorkPokemonParamGet(bsys, client, ctx->sel_mons_no[client]);
    BOOL hasGigantamaxFactor = GetMonData(mon, MON_DATA_CAN_GIGANTAMAX, NULL);

#ifdef DEBUG_DYNAMAX_LOGIC
    // debug_printf("species: %d, baseMove: %d, hasGigantamaxFactor: %d\n", species, baseMove, hasGigantamaxFactor);
#endif

    u32 type = GetAdjustedMoveType(ctx, client, baseMove);

#ifdef DEBUG_DYNAMAX_LOGIC
    // debug_printf("type: %d\n", type);
#endif

    if (ctx->moveTbl[baseMove].split == SPLIT_STATUS) {
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
        return MOVE_MAX_STRIKE;
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
