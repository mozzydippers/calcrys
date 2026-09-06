#ifndef DYNAMAX_H
#define DYNAMAX_H

#include "types.h"

#include "battle.h"

BOOL LONG_CALL AICheckCanDynamax(struct BattleSystem *bsys, struct BattleStruct *ctx, int client);
BOOL LONG_CALL CheckCanDynamax(struct BattleStruct *ctx, int client);
BOOL CheckCanDrawDynamaxButton(struct BI_PARAM *bip);
int LONG_CALL GetMaxMoveToBeUsed(struct BattleStruct *ctx, int baseMove, int client);

#endif
