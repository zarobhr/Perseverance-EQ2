--[[
    Script Name    : Spells/Priest/Druid/Warden/EssenceoftheGreatBear.lua
    Script Author  : theFoof
    Script Date    : 2013.12.16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, StaAmt, MitAmt)
    AddSpellBonus(Target, 201, MitAmt)
    AddSpellBonus(Target, 1, StaAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

