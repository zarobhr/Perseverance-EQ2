--[[
    Script Name    : Spells/Fighter/Brawler/Monk/Dragonfire.lua
    Script Author  : Dello
    Script Date    : 15/06/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, CastingSpeed, DmgType, MinVal, MaxVal, SkillAmt, DoTType, DoTMin, DoTMax)
    --Inflicts 23 - 39 slashing damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
    AddSpellBonus(Target, 664, CastingSpeed)

end

function tick(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt, DoTType, DoTMin, DoTMax)
    --Inflicts 10 - 12 slashing damage on target every 5 seconds
    if DoTMax ~= nil and DoTMin < DoTMax then
        SpellDamage(Target, DoTType, math.random(DoTMin, DoTMax))
    else
        SpellDamage(Target, DoTType, DoTMin)
    end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end