--[[
	Script Name	: Spells\Traits\Brawny.lua
	Script Purpose	: Increases Strength by 4
	Script Author	: Zcoretri
	Script Date	: 2012.07.22
--]]

function cast(Caster, Target, StatAmt)
    AddSpellBonus(Target, 0, StatAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end