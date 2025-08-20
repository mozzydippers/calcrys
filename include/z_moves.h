#ifndef Z_MOVES_H
#define Z_MOVES_H

#include "types.h"

BOOL LONG_CALL AICheckCanUseZMove(struct BattleStruct *battle, int client);
BOOL LONG_CALL CheckCanUltraBurst(struct BattleStruct *battle, int client);
BOOL CheckCanDrawZMoveButton(struct BI_PARAM *bip);
int LONG_CALL GetZMoveToBeUsed(struct BattleStruct *battle, int baseMove, int client);
int LONG_CALL GetZMovePower(struct BattleStruct *battle, int baseMove, int client);

#endif
