--[[
        Script Name     : dd.lua
        Script Purpose  : Generic direct damage script
        Script Author   : John Adams
        Script Date     : 2010.01.14
--]]

function cast(Caster, Target, DDType, MinDDVal, MaxDDVal)

        if MaxDDVal ~= nil and MinDDVal < MaxDDVal then
                dmgAmount = math.random(MinDDVal, MaxDDVal)
                SpellDamage(Target, DDType, dmgAmount)
        else
                SpellDamage(Target, DDType, MinDDVal)
        end

end
