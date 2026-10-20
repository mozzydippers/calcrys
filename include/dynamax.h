#ifndef DYNAMAX_H
#define DYNAMAX_H

#include "types.h"

#include "battle.h"

BOOL CheckCanDrawDynamaxButton(struct BI_PARAM *bip);
u32 LONG_CALL GetDynamaxedState(u32 species, u32 form, BOOL canGigantamax);
int LONG_CALL GetMaxMoveToBeUsed(struct BattleSystem *bsys, struct BattleStruct *ctx, int baseMove, int client);

#endif
