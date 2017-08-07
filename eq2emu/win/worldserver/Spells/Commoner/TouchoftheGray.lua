--[[
    Script Name    : Spells/Commoner/TouchoftheGray.lua
    Script Author  : John Adams
    Script Date    : 2013.11.19 09:11:23
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SlowAmt)

    -- Applies Touch of the Grey.  Lasts for 10.0 seconds.
    --     Slows target by 30.2%
    --     5% chance to dispel when target receives hostile action (to do)
    --     5% chance to dispel when target takes damage (to do)

    AddSpellBonus(Target, 610, SlowAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

