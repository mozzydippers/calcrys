#include "../../include/battle.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/file.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/pokemon.h"
#include "../../include/sprite.h"
#include "../../include/types.h"

BOOL LONG_CALL IsMoveBlockedByMaxGuard(int move)
{
    switch (move) {
    case MOVE_BLOCK:
    case MOVE_FLOWER_SHIELD:
    case MOVE_GEAR_UP:
    case MOVE_MAGNETIC_FLUX:
    case MOVE_PHANTOM_FORCE:
    case MOVE_PSYCH_UP:
    case MOVE_SHADOW_FORCE:
    case MOVE_TEATIME:
    case MOVE_TRANSFORM:
        return TRUE;
    default:
        return FALSE;
    }
}
