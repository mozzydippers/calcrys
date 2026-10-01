// Test: Hunger Switch does not change a Terastallized Morpeko's form
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .opponentTerastallize = TRUE,
    .enemyParty = {
        {
            .species = SPECIES_MORPEKO,
            .level = 50,
            .form = 0,
            .teraType = TYPE_ELECTRIC,
            .ability = ABILITY_HUNGER_SWITCH,
            .moves = { MOVE_CELEBRATE },
            .hp = FULL_HP,
            .furtherParams = {
                { MON_DATA_TERA_TYPE_ORIGINAL, TYPE_ELECTRIC },
                { MON_DATA_TERA_TYPE_OVERRIDE, TYPE_NONE },
            },
        },
    },
    .playerParty = {
        {
            .species = SPECIES_WOBBUFFET,
            .level = 50,
            .ability = ABILITY_TELEPATHY,
            .moves = { MOVE_CELEBRATE },
            .hp = FULL_HP,
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Morpeko used Celebrate!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Wobbuffet used Celebrate!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But nothing happened!" },
        { .expectationType = EXPECTATION_TYPE_NOT_MESSAGE, .expectationValue.message = "Morpeko's Hunger Switch" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Wobbuffet used Celebrate!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But nothing happened!" },
        { .expectationType = EXPECTATION_TYPE_NOT_MESSAGE, .expectationValue.message = "Morpeko's Hunger Switch" },
    }
}
END_TEST
