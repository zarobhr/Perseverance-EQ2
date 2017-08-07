--[[
    Script Name    : Spells/Priest/Druid/Warden/Thorncoat.lua
    Script Author  : theFoof
    Script Date    : 2013.12.09 11:12:44
    Script Purpose : 
                   : 
--]]

-- When damaged with a melee weapon this spell will cast Thorns on target's attacker.  
--     Inflicts 1 piercing damage on target

function cast(Caster, Target, DmgType, DmgLow, DmgHigh)
    AddProc(Target, 2, 100)
end

function proc(Caster, Target, Type, DmgType, DmgLow, DmgHigh)
    SpellDamage(Target, DmgType, DmgLow, DmgHigh)
end

function remove(Caster, Target)
    RemoveProc(Target)
end
