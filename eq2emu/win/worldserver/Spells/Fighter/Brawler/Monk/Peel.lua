--[[
    Script Name    : Spells/Fighter/Brawler/Monk/Peel.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 06:08:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- Increases Threat to target by 73 - 90  instantly and by 47 - 58  every 2 seconds thereafter
-- Applies Wane on termination.  Lasts for 20.0 seconds.
-- Increases Threat to target by 1,853 - 2,206  instantly and by 1,330 - 1,567  every 4 seconds thereafter
-- Forces target to change their selected target to caster instantly and every 2 seconds.
-- Increases threat priority of target by 4 positions
-- Prevents target from changing targets
-- Must be not at the top of the hate list of your current target.

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

