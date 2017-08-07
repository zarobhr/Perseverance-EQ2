--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/KnightsStance.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.05 06:12:33
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, dmgReduction, staBonus, avoidBonus, meleeReduction, defenseBonus, arcaneMitBonus, armoreffectiveness)
	-- Reduces physical damage done to caster by 5%
	Say(Caster, "Not Implemented: physical damage reduction")
	-- Increases STA of caster by 11.9
	AddSpellBonus(Target, 1, staBonus)
	-- Adds 2.8% to base avoidance.
	AddSpellBonus(Target, 696, avoidBonus)
	-- Decreases Crushing, Piercing and Slashing of caster by 1.4
	AddSkillBonus(Target, 3421494576, meleeReduction)
	AddSkillBonus(Target, 3048574950, meleeReduction)
	AddSkillBonus(Target, 418532101, meleeReduction)
	-- Increases Aggression and Defense of caster by 1.6
	AddSkillBonus(Target, 723762198, defenseBonus)
	AddSkillBonus(Target, 609880714, defenseBonus)
	-- Increases Mitigation of caster vs arcane damage by 138
	AddSpellBonus(Target, 203, arcaneMitBonus)
	-- Increases the caster's effectiveness of worn armor vs physical damage by 15%
	AddSpellBonus(Target, 678, armoreffectiveness) -- Might not be the correct bonus ID
    
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
	RemoveSkillBonus(Target)
end
