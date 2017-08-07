--[[
    Script Name    : Spells/Scout/Predator/Assassin/JugularSlice.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 05:04:09
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- You must be in stealth.
    if not IsStealthed(Caster) then
        SendMessage(Caster, "You must be in stealth.", "yellow")
        return false
    end

    return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 217 - 362 slashing damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Stifles target
    --     If Target is not Epic
    if not IsEpic(Target) then
        AddControlEffect(Target, 2)
    end

    -- Resistibility increases against targets higher than level 29.
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
end
