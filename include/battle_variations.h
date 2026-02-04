#include "constants/ability.h"
#include "constants/file.h"
#include "constants/item.h"
#include "constants/move_effects.h"
#include "constants/moves.h"
#include "constants/species.h"

#include "battle.h"
#include "pokemon.h"
#include "sprite.h"
#include "types.h"

// Battle Special Flags
#define BATTLE_SPECIAL_FIRST_RIVAL      (1 << 0)
#define BATTLE_SPECIAL_HONEY_TREE       (1 << 1)
#define BATTLE_SPECIAL_NO_RUNNING       (1 << 2)
#define BATTLE_SPECIAL_LEGENDARY        (1 << 3)
#define BATTLE_SPECIAL_RECORDING        (1 << 4)
#define BATTLE_SPECIAL_RECORDED         (1 << 5)
#define BATTLE_SPECIAL_GIRATINA         (1 << 6)
#define BATTLE_SPECIAL_DISTORTION_WORLD (1 << 7)
#define BATTLE_SPECIAL_TOTEM            (1 << 8)
#define BATTLE_SPECIAL_MAX_RAID         (1 << 9)
#define BATTLE_SPECIAL_TITAN            (1 << 10)
#define BATTLE_SPECIAL_TERA_RAID        (1 << 11)
#define BATTLE_SPECIAL_NO_ITEMS         (BATTLE_SPECIAL_MAX_RAID | BATTLE_SPECIAL_TERA_RAID)

enum BattleVariationType {
    BATTLE_VARIATION_TYPE_TOTEM = 1,
    BATTLE_VARIATION_TYPE_MAX_RAID,
    BATTLE_VARIATION_TYPE_TITAN_BATTLE,
    BATTLE_VARIATION_TYPE_TERA_RAID,
    // Custom raids go below
};

typedef struct BattleVariationPokemon {
    u32 species;
    u16 form;
    u16 gender;
    u16 level;
    u32 heldItem;
    u32 moves[4];
    u8 basePoints[6]; // HP, Attack, Defense, Speed, Special Attack, Special Defense
    u8 potential[6]; // HP, Attack, Defense, Speed, Special Attack, Special Defense
    u8 nature;
    u16 abilitySlot;
    u8 forceShiny;
} BattleVariationPokemon;

// Not every raid type in the actual game supports every field. I put it here for convenience. Design with caution!
typedef struct BattleVariationBase {
    BattleVariationPokemon mainPokemon;
} BattleVariationBase;

enum AuraType {
    AURA_TYPE_ATTACK_UP = 1,
    AURA_TYPE_ATTACK_UP_2,
    AURA_TYPE_ATTACK_UP_3,
    AURA_TYPE_DEFENSE_UP,
    AURA_TYPE_DEFENSE_UP_2,
    AURA_TYPE_DEFENSE_UP_3,
    AURA_TYPE_SP_ATK_UP,
    AURA_TYPE_SP_ATK_UP_2,
    AURA_TYPE_SP_ATK_UP_3,
    AURA_TYPE_SP_DEF_UP,
    AURA_TYPE_SP_DEF_UP_2,
    AURA_TYPE_SP_DEF_UP_3,
    AURA_TYPE_SPEED_UP,
    AURA_TYPE_SPEED_UP_2,
    AURA_TYPE_SPEED_UP_3,
    AURA_TYPE_OMNIBOOST,
    AURA_TYPE_OMNIBOOST_2,
    AURA_TYPE_OMNIBOOST_3,
};

typedef struct TotemBattle {
    BattleVariationBase battleVariationBase;
    BattleVariationPokemon sosPartners[2];
    enum AuraType auraType;
} TotemBattle;

enum ActionType {
    ADDITIONAL_MOVE = 1,
    SHIELD,
    REMOVAL_OF_NEGATIVE_EFFECTS,
    REMOVAL_OF_POSITIVE_EFFECTS,
    TERA_ORB_CHARGE_STEALING,
    DOUBLE_ACTION_PHASE,
};

enum ThresholdType {
    TIMER = 1,
    HEALTH,
};

typedef struct ExtraAction {
    enum ActionType actionType;
    enum ThresholdType thresholdType;
    u32 threshold;
    u32 move;
} ExtraAction;

typedef struct MaxRaidBattle {
    BattleVariationBase battleVariationBase;
    ExtraAction extraActions[6];
    u8 multipliers[6]; // HP, Attack, Defense, Speed, Special Attack, Special Defense
} MaxRaidBattle;

// This damage value is rounded normally (0.5 rounds up, otherwise round down).
typedef struct TeraShieldStrengths {
    u8 notTerastallized; // 20
    u8 terastallized_DifferentType; // 35
    u8 terastallized_SameType; // 75
} TeraShieldStrengths;

// TODO: there should be more
typedef struct TeraRaidBattle {
    BattleVariationBase battleVariationBase;
    u8 rank;
    u32 durationSeconds;
    u8 teraType;
    u8 multipliers[6]; // HP, Attack, Defense, Speed, Special Attack, Special Defense
    TeraShieldStrengths teraShieldStrengths;
    u32 shieldTimeThreshold;
    u32 shieldHPThreshold;
    ExtraAction extraActions[6];
} TeraRaidBattle;
