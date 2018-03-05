-----------------------------------
-- Area: Abyssea_Vunkeral
--  NPC: Liloune
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Abyssea-Vunkerl/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Vunkerl/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(1099);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;