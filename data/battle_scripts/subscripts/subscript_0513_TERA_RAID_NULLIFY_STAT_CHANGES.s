.include "asm/include/battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_ENEMY_SLOT_1, BATTLE_ANIMATION_TERA_RAID_NULLIFY_STAT_CHANGES
    Wait
    // {0} nullified the stat changes and Abilities affecting your side!
    PrintGlobalMessage BATTLE_MSG_TERA_RAID_NULLIFY_STAT_CHANGES, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY_SLOT_1
    Wait
    WaitButtonABTime 120
    End
