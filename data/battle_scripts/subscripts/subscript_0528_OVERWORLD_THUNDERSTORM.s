#include "constants/battle_constants.h"
#include "constants/battle_message_constants.h"
.include "battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_PLAYER, BATTLE_ANIMATION_WEATHER_RAIN
    Wait
    // It’s raining!
    PrintMessage 799, TAG_NONE
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_RAIN_PERMANENT
    // An electric current is running across the battlefield!
    PrintMessage BATTLE_MSG_OVERWORLD_ELECTRIC_TERRAIN_START, TAG_NONE
    Wait
    WaitButtonABTime 30
    End
