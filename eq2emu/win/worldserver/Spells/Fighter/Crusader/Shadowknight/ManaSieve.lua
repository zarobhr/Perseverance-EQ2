--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/ManaSieve.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 06:08:31
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMin, DoTMax)

    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMin, DoTMax)

    if DoTMax ~= nil and DoTMin < DoTMax then
        SpellDamage(Target, DoTType, math.random(DoTMin, DoTMax))
    else
        SpellDamage(Target, DoTType, DoTMin)
    end
end


-- Increases power of caster by 63 - 105
-- Increases power of caster by 14 - 23 every 4 seconds

