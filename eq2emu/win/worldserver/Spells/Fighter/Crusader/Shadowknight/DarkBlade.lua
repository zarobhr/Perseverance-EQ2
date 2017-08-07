--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/DarkBlade.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.08 02:01:11
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt, DefSkillAmt, SkillAmt)
    -- Increases STR of caster by 17.8
    AddSpellBonus(Target, 0, BonusAmt)

    -- Decreases Defense of caster by 1.8
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkillAmt)

    -- Increases Crushing, Disruption, Piercing and Slashing of caster by 2.4
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
