--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Mutilate.lua
    Script Author  : Dello
    Script Date    : 10/06/2014
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DoTType, MinVal, MaxVal, AttackSpeed, DmgType, MinVal, MaxVal)

    AddSpellBonus(Target, 617, AttackSpeed)

    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end
end

function tick(Caster, Target, DoTType, DoTVal, AttackSpeed, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DoTType, DoTVal)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end