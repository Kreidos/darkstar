-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Ironbound Gate
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    local X = player:getXPos();
    local Z = player:getZPos();

    if ((X > -43 and X < -37) and (Z < -53 and Z > -59)) then
        player:startEvent(131); -- To Waj. Woodlands
    else
        player:startEvent(130); -- To B. Thickets
    end

end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);

    if (csid == 131 and option == 1) then
        player:setPos(690,-18.5,220,128,0x33);        --> Wajaom Woodlands, at northeastern tower
    elseif (csid == 130 and option == 1) then
         player:setPos(570.5,-10.5,140,128,0x34);    --> Bhaflau Thickets, at southeastern tower
    end

end;