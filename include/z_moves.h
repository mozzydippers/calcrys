#ifndef Z_MOVES_H
#define Z_MOVES_H

#include "types.h"

#include "battle.h"

BOOL LONG_CALL AICheckCanUseZMove(struct BattleStruct *ctx, int client);
BOOL LONG_CALL CheckCanUltraBurst(struct BattleStruct *ctx, int client);
BOOL CheckCanDrawZMoveButton(struct BI_PARAM *bip);
int LONG_CALL GetZMoveToBeUsed(struct BattleStruct *ctx, int baseMove, int client);

#endif
