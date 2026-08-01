#ifndef DYNAMAX_H
#define DYNAMAX_H

#include "types.h"

BOOL LONG_CALL AICheckCanDynamax(struct BattleStruct *battle, int client);
BOOL LONG_CALL CheckCanDynamax(struct BattleStruct *battle, int client);
BOOL CheckCanDrawDynamaxButton(struct BI_PARAM *bip);
int LONG_CALL GetMaxMoveToBeUsed(struct BattleStruct *battle, int baseMove, int client);

#endif
