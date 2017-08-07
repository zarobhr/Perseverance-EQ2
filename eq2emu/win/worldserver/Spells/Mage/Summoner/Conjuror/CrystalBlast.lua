--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/CrystalBlast.lua
    Script Author  : John Adams
    Script Date    : 2013.11.20 05:11:53
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)

    -- Inflicts 11 - 15 magic damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

end
