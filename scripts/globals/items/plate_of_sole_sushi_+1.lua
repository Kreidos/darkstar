-----------------------------------------
-- ID: 5163
-- Item: plate_of_sole_sushi_+1
-- Food Effect: 60Min, All Races
-----------------------------------------
-- Health 20
-- Strength 5
-- Dexterity 6
-- Accuracy % 16
-- Ranged ACC % 16
-- Sleep Resist 2
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,3600,5163)
end

function onEffectGain(target, effect)
    target:addMod(dsp.mod.HP, 20)
    target:addMod(dsp.mod.STR, 5)
    target:addMod(dsp.mod.DEX, 6)
    target:addMod(dsp.mod.FOOD_ACCP, 16)
    target:addMod(dsp.mod.FOOD_ACC_CAP, 76)
    target:addMod(dsp.mod.FOOD_RACCP, 16)
    target:addMod(dsp.mod.FOOD_RACC_CAP, 76)
    target:addMod(dsp.mod.SLEEPRES, 2)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.HP, 20)
    target:delMod(dsp.mod.STR, 5)
    target:delMod(dsp.mod.DEX, 6)
    target:delMod(dsp.mod.FOOD_ACCP, 16)
    target:delMod(dsp.mod.FOOD_ACC_CAP, 76)
    target:delMod(dsp.mod.FOOD_RACCP, 16)
    target:delMod(dsp.mod.FOOD_RACC_CAP, 76)
    target:delMod(dsp.mod.SLEEPRES, 2)
end
