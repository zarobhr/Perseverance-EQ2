--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/LucansPact.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.08 02:01:23
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt, StaBonusAmt, AvdBonusAmt, OffSkillAmt, DefSkillAmt, ResistAmt, ArmorBonusAmt)
    -- Reduces physical damage done to caster by 5%
    AddSpellBonus(Target, 313, BonusAmt) -- Not sure on this value (313)

    -- Increases STA of caster by 11.9
    AddSpellBonus(Target, 1, StaBonusAmt)

    -- Adds 2.8% to base avoidance.
    AddSpellBonus(Target, 696, AvdBonusAmt)

    -- Decreases Crushing, Piercing and Slashing of caster by 1.4
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkillAmt)

    -- Increases Aggression and Defense of caster by 1.6
    AddSkillBonus(Target, GetSkillIDByName("Aggression"), DefSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkillAmt)

    -- Increases Mitigation of caster vs noxious damage by 138
    AddSpellBonus(Target, 202, ResistAmt)

    -- Increases the caster's effectiveness of worn armor vs physical damage by 15%
    AddSpellBonus(Target, 678, ArmorBonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end

