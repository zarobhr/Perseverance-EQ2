--[[
    Script Name    : Spells/Scout/Rogue/Brigand/MurderousRake.lua
    Script Author  : Zcoretri
    Script Date    : 17.March.2014
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
-- Must be flanking or behind
    if IsBehind(Caster, Target) then
        return true
    else
        SendMessage(Caster, "You must be flanking or behind your target to use this ability!", "yellow")
    end
end

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, Mitigation1, Mitigation2)
-- Decreases Mitigation of target vs elemental and noxious damage by 360
-- Decreases Mitigation of target vs arcane damage by 360
-- Inflicts 145 - 241 melee damage on target
    AddSpellBonus(Target, 201, Mitigation1)
    AddSpellBonus(Target, 202, Mitigation1)
    AddSpellBonus(Target, 203, Mitigation2)
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

function remove(Caster, Target, DmgType, MinDmg, MaxDmg, Mitigation1, Mitigation2)
    RemoveSpellBonus(Target)
end

