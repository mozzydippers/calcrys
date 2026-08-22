#include "constants/battle_constants.h"
#include "constants/battle_message_constants.h"
.include "battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_ENEMY, BATTLE_ANIMATION_AURA_FLARED_TO_LIFE
    Wait
    // Set boosts and buffer message
    SetAuraBoost BATTLER_CATEGORY_ENEMY
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    End
