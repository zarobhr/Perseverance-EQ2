--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/WallofRage.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 02:08:52
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- Decreases Attack Speed of caster by 11.3
-- Increases Mitigation of caster vs physical damage by 133
-- On a melee hit this spell may cast Cripple on target of attack.  Lasts for 10.0 seconds.  Triggers about 5.0 times per minute. 
--     Slows targets in Area of Effect by 29.3%
--     5% chance to dispel when target receives hostile action
--     5% chance to dispel when target takes damage

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

