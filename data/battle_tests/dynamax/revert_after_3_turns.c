// Test: Dynamax - Revert after 3 turns
#include "../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .weather = FIELD_CONDITION_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .opponentDynamax = TRUE,
        .playerParty = {
            {
                .species = SPECIES_QUAQUAVAL,
                .level = 50,
                .form = 0,
                .ability = ABILITY_TORRENT,
                .item = ITEM_FOCUS_SASH,
                .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
        },
    .enemyParty = {
        {
            .species = SPECIES_CHARIZARD,
            .level = 50,
            .form = 0,
            .ability = ABILITY_BLAZE,
            .item = ITEM_NONE,
            .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
            .furtherParams = {
                { MON_DATA_CAN_GIGANTAMAX, TRUE },
            },
        },
    },
    .playerScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_NONE, 0 },
        },
    },
    .enemyScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_NONE, 0 },
        },
    },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Charizard used Max Guard!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Charizard used Max Guard!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Charizard used Max Guard!" },
    }
}
END_TEST
