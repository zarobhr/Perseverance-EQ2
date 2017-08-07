--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/HowloftheDamned.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.07 11:12:43
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, atkSpeed, defPenalty, focusBonus, procDmgType, procDmg, procHeal, castSkills)
    --     Increases Attack Speed of target by 16.5
    AddSpellBonus(Target, 617, atkSpeed)

    --     Decreases Defense and Parry of target by 4.9
    AddSkillBonus(Target, GetSkillIDByName("Defense"), defPenalty)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), defPenalty)

    --     Increases Focus of target by 4.5
    AddSkillBonus(Target, GetSkillIDByName("Focus"), focusBonus)

    --     Increases Subjugation and Disruption of target by 4.5
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), castSkills)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), castSkills)
end

function proc(Caster, Target, Type, atkSpeed, defPenalty, focusBonus, procDmgType, procDmg, procHeal, castSkills)
    --     On any combat or spell hit this spell may cast Clawing of the Soul on target of attack.  Triggers about 2.0 times per minute. 
    --         Inflicts 49 disease damage on target
    ProcDamage(Caster, Target, "Clawing of the Soul", procDmgType, procDmg)

    --         Heals caster for 10
    SpellHeal("Heal", procHeal)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
