--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/FireSeed.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 08:08:05
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- On a combat hit this spell has a 20% chance to cast Seed of Fire on target of attack.  Lasts for 16.0 seconds.  
-- Inflicts 15 - 18 heat damage on target instantly and every 4 seconds
-- On death this spell will cast Blooming Flames on caster.  
-- Inflicts 67 - 82 heat damage on target encounter
-- Grants a total of 1 trigger of the spell.

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

