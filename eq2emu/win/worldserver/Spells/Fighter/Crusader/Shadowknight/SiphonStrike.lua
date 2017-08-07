--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/SiphonStrike.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.08 11:01:56
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DmgType2, MinVal2, MaxVal2, HealMin, HealMax)
    -- Inflicts 23 - 39 disease damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Applies Life Draw on termination.
    if LastSpellAttackHit() then
        --     Inflicts 81 - 135 disease damage on target
        if MaxVal2 ~= nil and MinVal2 < MaxVal2 then
            SpellDamage(Target, DmgType2, math.random(MinVal2, MaxVal2))
        else
            SpellDamage(Target, DmgType2, MinVal2)
        end

        --     Heals caster for 37 - 62
        --         This effect cannot be critically applied.
        --     The healing of this spell cannot be modified except by direct means
        SpellHeal("Heal", HealMin, HealMax, Caster, 2, 1)
    end
end
