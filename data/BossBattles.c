#include "../include/constants/item.h"
#include "../include/pokemon.h"
#include "../include/battle_variations.h"

struct BossBattle BossBattles[] = {
    [0] = {
        .battleVariationBase.mainPokemon.species = SPECIES_SUDOWOODO,
        .battleVariationBase.mainPokemon.gender = 0,
        .battleVariationBase.mainPokemon.abilitySlot = 1,
        .battleVariationBase.mainPokemon.level = 40,
        .battleVariationBase.mainPokemon.nature = NATURE_ADAMANT,
        .battleVariationBase.mainPokemon.heldItem = ITEM_PASSHO_BERRY,
        .battleVariationBase.mainPokemon.moves = { MOVE_HEAD_SMASH, MOVE_WOOD_HAMMER, MOVE_STOMPING_TANTRUM, MOVE_ICE_PUNCH },
        .battleVariationBase.mainPokemon.potential = { 31, 31, 31, 31, 31, 31 },
        .multipliers = { 6, 1, 1, 1, 1, 1 },
        .extraActions = {
            {
                .actionType = ADDITIONAL_MOVE,
                .thresholdType = THRESHOLD_HEALTH,
                .threshold = 100,
                .moveNumberOrAction = MOVE_TAUNT,
            },
            {
                .actionType = ADDITIONAL_MOVE,
                .thresholdType = THRESHOLD_HEALTH,
                .threshold = 100,
                .moveNumberOrAction = MOVE_TEETER_DANCE,
            },
            {
                .actionType = TERA_RAID_REMOVAL_OF_NEGATIVE_EFFECTS,
                .thresholdType = THRESHOLD_HEALTH,
                .threshold = 75,
            },
            {
                .actionType = TERA_RAID_REMOVAL_OF_POSITIVE_EFFECTS,
                .thresholdType = THRESHOLD_HEALTH,
                .threshold = 50,
            },
            {
                .actionType = ADDITIONAL_MOVE,
                .thresholdType = THRESHOLD_HEALTH,
                .threshold = 50,
                .moveNumberOrAction = MOVE_TEARFUL_LOOK,
            },
            {
                .actionType = ADDITIONAL_MOVE,
                .thresholdType = THRESHOLD_HEALTH,
                .threshold = 9,
                .moveNumberOrAction = MOVE_FLAIL,
            },
        },
    },
};
