--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/SiphonStrength.lua
    Script Author  : Dello
    Script Date    : 18/07/2014
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, BonusAmt)

    AddSpellBonus(Target, 0, BonusAmt)
    AddSpellBonus(Target, 4, BonusAmt)

    AddSpellBonus(Caster, 0, BonusAmt)
    AddSpellBonus(Caster, 4, BonusAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

