--[[
    Script Name    : Spells/Scout/Evade.lua
    Script Author  : theFoof
    Script Date    : 2013.12.09 04:12:50
    Script Purpose : 
                   : 
--]]

-- Decreases Threat to target

function cast(Caster, Target, HateLow, HateHigh)
    AddHate(Caster, Target, math.random(HateLow, HateHigh), 1)
end

function remove(Caster, Target)
end
