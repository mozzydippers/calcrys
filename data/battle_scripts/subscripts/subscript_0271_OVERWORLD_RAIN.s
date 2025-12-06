.include "asm/include/battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_PLAYER, BATTLE_ANIMATION_WEATHER_RAIN
    Wait
    // It’s raining!
    PrintMessage 799, TAG_NONE
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_RAIN_PERMANENT
.if THUNDER_STORM_WEATHER_ELECTRIC_TERRAIN == 1
    // An electric current is running across the battlefield!
    PrintMessage 1743, TAG_NONE
    Wait
    WaitButtonABTime 30
.endif
    End
