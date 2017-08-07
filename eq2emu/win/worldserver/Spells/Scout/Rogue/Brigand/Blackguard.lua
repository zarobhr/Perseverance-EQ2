--[[
    Script Name    : Spells/Scout/Rogue/Brigand/Blackguard.lua
    Script Author  : Zcoretri
    Script Date    : 14.March.2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt, Aggression, Defense, Armor)
    AddSkillBonus(Target, 3421494576, SkillAmt) -- Crushing
    AddSkillBonus(Target, 3048574950, SkillAmt) -- Piercing
    AddSkillBonus(Target, 418532101, SkillAmt) -- Slashing
    AddSkillBonus(Target, 723762198, Aggression)
    AddSkillBonus(Target, 609880714, Defense)
    AddSkillBonus(Target, 540022425, Defense) -- Parry
    -- AddSpellBonus(Target, , Armor)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end

