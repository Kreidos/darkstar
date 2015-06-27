-----------------------------------
-- Area: Southern SandOria [S]
-- NPC: Loillie
-- @zone 80
-- @pos 78 -8 -23
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria_[S]/TextIDs"] = nil;
require("scripts/zones/Southern_San_dOria_[S]/TextIDs");
require("scripts/globals/quests");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	if(player:getQuestStatus(CRYSTAL_WAR,GIFTS_OF_THE_GRIFFON) == QUEST_ACCEPTED and player:getVar("GiftsOfGriffonProg") == 2) then
		if(trade:hasItemQty(2528,1) and trade:getItemCount() == 1 and not player:getMaskBit(player:getVar("GiftsOfGriffonPlumes"),6)) then
			player:startEvent(0x01D) -- Gifts of Griffon Trade
		end
	end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
player:startEvent(0x0265); -- Default Dialogue
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
	if(csid == 0x01D) then -- Gifts Of Griffon Trade
		player:tradeComplete();
		player:setMaskBit(player:getVar("GiftsOfGriffonPlumes"),"GiftsOfGriffonPlumes",6,true);
	end
end;