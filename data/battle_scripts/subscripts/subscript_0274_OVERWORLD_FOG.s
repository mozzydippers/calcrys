.include "asm/include/battle_commands.inc"

.data

_000:
.if FOG_WEATHER_MISTY_TERRAIN == 0
    PlayBattleAnimation BATTLER_CATEGORY_PLAYER, BATTLE_ANIMATION_WEATHER_FOG
    Wait
    // Fog crept up as thick as soup!
    PrintMessage 1466, TAG_NONE
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_FOG
.else
    // Mist swirls around the battlefield!
    PrintMessage 1742, TAG_NONE
    Wait
    WaitButtonABTime 30
.endif
    End
