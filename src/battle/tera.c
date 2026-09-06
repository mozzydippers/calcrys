#include "debug.h"

#include "constants/pokemon.h"

#include "battle.h"

#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/types.h"
#ifdef DEBUG_BATTLE_SCENARIOS
#include "test_battle.h"
#endif

BOOL LONG_CALL AICheckCanTerastallize(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int client)
{
#ifdef DEBUG_TERASTALLIZATION_LOGIC
    debug_printf("In AICheckCanTerastallize\n");
#endif

    int species = ctx->battlemon[client].species;

    int command = ctx->playerActions[client][3];

    if (newBS.sideTerastallize[client]) {
        return FALSE;
    }

    if (ctx->playerActions[client][3] != SELECT_FIGHT_COMMAND) {
        return FALSE;
    }

    if (command == SELECT_FIGHT_COMMAND) {
        if ((ctx->battlemon[client].condition2 & STATUS2_TRANSFORM) && (species == SPECIES_OGERPON || species == SPECIES_TERAPAGOS)) {
            return FALSE;
        }

#ifdef DEBUG_BATTLE_SCENARIOS
        struct TestBattleScenario *scenario = TestBattle_GetCurrentScenario();
        if (scenario->opponentTerastallize) {
            return TRUE;
        }
#else
        // For AI only
        if (species == SPECIES_OGERPON || species == SPECIES_TERAPAGOS) {
            return TRUE;
        }
#endif
    }
    return FALSE;
}

u32 LONG_CALL GetTerastallizedState(u32 species, u32 form)
{
    if (species == SPECIES_OGERPON) {
        switch (form) {
        case 0:
        case 4:
            return 4;
        case 1:
        case 5:
            return 5;
        case 2:
        case 6:
            return 6;
        case 3:
        case 7:
            return 7;
        }
    }
    if (species == SPECIES_TERAPAGOS && form == 1) {
        return 2;
    }
    return form;
}

u32 LONG_CALL GetOgerponTerastallizedFormPic(u32 type)
{
start:
    debug_printf("type: %d\n", type);
    switch (type) {
    case TYPE_GRASS:
        return 4;
    case TYPE_WATER:
        return 5;
    case TYPE_FIRE:
        return 6;
    case TYPE_ROCK:
        return 7;
    default:
        goto start;
    }
}
