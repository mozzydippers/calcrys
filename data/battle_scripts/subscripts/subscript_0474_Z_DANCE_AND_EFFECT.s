.include "asm/include/battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_Z_DANCE
    Wait
    //{0} surrounded itself with its Z-Power!
    PrintMessage BATTLE_MSG_SURROUNDED_Z_POWER, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait
    WaitButtonABTime 30
    //{0} unleashes its full-force Z-Move!
    PrintMessage BATTLE_MSG_UNLEASE_Z_MOVE, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    End
