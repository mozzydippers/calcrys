.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_WATER_SPORT
    PlayMoveAnimation BATTLER_CATEGORY_ENEMY
    Wait 
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_ATTACKER, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_WATER_SPORT
    // Fire’s power was weakened!
    PrintMessage 588, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
