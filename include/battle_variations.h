#include "types.h"

#include "constants/ability.h"
#include "constants/file.h"
#include "constants/item.h"
#include "constants/move_effects.h"
#include "constants/moves.h"
#include "constants/species.h"

#include "battle.h"
#include "pokemon.h"
#include "sprite.h"

enum BattleVariationType {
    BATTLE_VARIATION_TYPE_TOTEM = 1,
    BATTLE_VARIATION_TYPE_MAX_RAID,
    BATTLE_VARIATION_TYPE_TITAN_BATTLE,
    BATTLE_VARIATION_TYPE_TERA_RAID,
    // Custom raids go below
    BATTLE_VARIATION_TYPE_BOSS_BATTLE,
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

typedef struct MaxRaidBattle {
    BattleVariationBase battleVariationBase;
    ExtraAction extraActions[MAX_EXTRA_ACTIONS];
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

typedef struct BossBattle {
    BattleVariationBase battleVariationBase;
    ExtraAction extraActions[MAX_EXTRA_ACTIONS];
    u8 multipliers[6]; // HP, Attack, Defense, Speed, Special Attack, Special Defense
} BossBattle;

union BattleVariationUnion {
    struct TotemBattle totemBattle;
    struct MaxRaidBattle maxRaidBattle;
    struct TeraRaidBattle teraRaidBattle;
    // Custom variations go below:
    struct BossBattle bossBattle;
};

typedef struct BattleVariationInfo {
    enum BattleVariationType battleVariationType;
    u32 slot;
    u32 originalHP;
} BattleVariationInfo;

struct BattleVariationInfo *LONG_CALL GetBattleVariationInfo();

void LONG_CALL ClearBattleVariationInfo();
