#include "../include/battle.h"
#include "../include/battle_variations.h"
#include "../include/constants/file.h"
#include "../include/pokemon.h"
#include "../include/types.h"

BOOL LONG_CALL ScrCmd_BattleVariation(SCRIPTCONTEXT *ctx)
{
    // debug_printf("In ScrCmd_BattleVariation\n");
    u8 battleVariationType = ScriptReadByte(ctx);
    u16 raidID = ScriptReadHalfword(ctx);
    u32 *winFlag = FieldSysGetAttrAddr(ctx->fsys, SCRIPTENV_BATTLE_WIN_FLAG);

    switch (battleVariationType) {
    case BATTLE_VARIATION_TYPE_TOTEM:
        break;
    case BATTLE_VARIATION_TYPE_MAX_RAID:
        break;
    case BATTLE_VARIATION_TYPE_TERA_RAID:
        break;
    default:
        break;
    }

    return TRUE;
}
