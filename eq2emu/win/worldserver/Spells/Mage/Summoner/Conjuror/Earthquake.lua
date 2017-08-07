--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/Earthquake.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 06:03:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 92 - 276 magic damage on targets in Area of Effect
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Applies Knockdown on termination.  Lasts for 1.5 seconds.
    --     Throws target back
    --     Stuns target
    --     Blurs vision of target
    --     Does not affect Epic targets
    if not IsEpic(Target) then
        Knockback(Caster, Target, 1500)
        RemoveControlEffect(Target, 4)
        BlurVision(Target, 1.0)
        AddSpellTimer(1500, "RemoveKnockback")
    end
end

function RemoveKnockback(Caster, Target)
    RemoveControlEffect(Target, 4)
    BlurVision(Target, 0.0)
end
