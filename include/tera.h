#ifndef TERA_H
#define TERA_H

#include "types.h"

#include "battle.h"

BOOL LONG_CALL AICheckCanTerastallize(struct BattleSystem *bsys, struct BattleStruct *ctx, int client);
u32 LONG_CALL GetTerastallizedState(u32 species, u32 form);
u32 LONG_CALL GetOgerponTerastallizedFormPic(u32 type);
BOOL CheckCanDrawTerastallizeButton(struct BI_PARAM *bip);

#endif

// https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9838633
// interesting discovery in regards to ogerpon - if it has an ability that can't be removed via skill swap (such as protosynthesis or power construct), then after terastallizing, it keeps that ability until it switches out (after then, it becomes embody aspect as normal). when this happens, embody aspect doesn't activate. when testing with proto, it kept its boost until it switched out, after which it longer applied thanks to no longer having proto.
//
// https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-10652243
// Illusion Ogerpon still breaks its Illusion when activating its Terastallization.
// Illusion Baby Terapagos will not break its Illusion when activating its Terastallization.
// All of Ogerpon, Baby Terapagos (Run Away in this case), and regular Terapagos-Terastal will retain their original abilities if they Terastallize while already Transformed. For example, Terapagos-Terastal activating its Terastallization while Transformed into a Polteageist will result in a Terastallized Terapagos-Terastal with Tera Shell if switched out and back into battle. All of this is shown in the linked footage if these sentences get confusing.
//
// https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-10498681
// I used Reflect Type to turn Terapagos into an Electric/Flying type and under Delta Stream, the message from Delta Stream goes off and then Terapagos takes not very effective damage. Tera Shell doesn't go off at all.
// Here is the footage: https://imgur.com/a/tera-shell-delta-stream-electric-flying-U2FtIDb
//
// https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-10415100
// Hi. This was already checked by me in this post a while ago. Teraform Zero doesn't activate upon Tera or otherwise for baby Terapagos or for other Pokemon, with or without Tera Stellar. I repeated the test to be completely sure of this interaction in the newest game update, though, and it's the same result. Hope this helps.
// https://www.smogon.com/forums/threads/ogerpon-teal-tera-tera-can-exist.3742851/post-10132811
// Although you can't start a battle with an already Terastallized Ogerpon, Anubis was kind enough to test editing the Ogerpon's form during the middle of the battle. Here's the clip: https://streamable.com/843iv7
//
// In this clip, Anubis starts with a regular Teal Mask Ogerpon (Ogerpon-0). She then edits it to be Ogerpon-Teal-Tera (Ogerpon-4). Notice that Embody Aspect does not activate when sent out like this. She then edits it to be Ogerpon-Hearthflame-Tera (Ogerpon-6) and Terastallizes it. It becomes Ogerpon-Teal-Tera (Ogerpon-4).

// So that means a few things:

//     Embody Aspect should not activate unless the user is Terastallized.
//     Hacked Ogerpon-[form]-Tera forms should be allowed to Terastallize.
//     Hacked Ogerpon-[form]-Tera forms will become whatever the Tera Type is for that Ogerpon.

// Expanding on these tests with my own testing, Embody Aspect doesn't work unless the user is specifically a Terastallized Ogerpon. The game still softlocks if you try to Terastallize Ogerpon with a non-Grass/Fire/Rock/Water Tera Type. However, it will allow, for example, a Tera Water Ogerpon-Hearthflame holding Hearthflame Mask (Ogerpon-2) to Terastallize to Ogerpon-Wellspring-Tera (Ogerpon-5). Doing so will change Ogerpon to Water-type, but still give an Attack boost, and Ivy Cudgel will still be Fire-type.

// So the developer fixing this should implement their fix with these mechanics in mind. We obviously aren't going to allow softlocks though, so I would prevent any Ogerpon with a non-Fire, Grass, Water, or Rock Tera Type from Terastallizing in the battle as a compromise.

// EDIT: Here's some cart footage of Tera Water Ogerpon-Hearthflame holding Hearthflame Mask (Ogerpon-2) Terastallizing. I suspect now that it is not actually becoming Ogerpon-5 (Wellspring-Tera), but rather Ogerpon-6 (Hearthflame-Tera), and simply has the visual effects of Ogerpon-5.
