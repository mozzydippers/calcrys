#include "constants/battle_constants.h"
#include "constants/battle_message_constants.h"
.include "battle_commands.inc"

.data

_000:
    PrintAttackMessage
    Wait
    WaitButtonABTime 15
    AbilityPopup BATTLER_CATEGORY_MSG_TEMP
    // {0} made its shell gleam! It’s distorting type matchups!
    PrintMessage BATTLE_MSG_TERA_SHELL, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
    End
