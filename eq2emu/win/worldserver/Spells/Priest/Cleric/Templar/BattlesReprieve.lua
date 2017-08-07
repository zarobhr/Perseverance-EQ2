--[[
    Script Name    : Spells/Priest/Cleric/Templar/BattlesReprieve.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 06:08:48
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- Resurrects target with 15% health and power
-- Applies Battle's Reprieve on termination.  Lasts for 1 minute.
-- Heals target for 27.6% of max health
-- Increases Mitigation of target vs physical damage by 220
-- Applies Revived Sickness on termination.  Lasts for 2 minutes.
-- Decreases Toughness of target by 75.0
-- Decreases Lethality of target by 75.0
-- Decreases All Attributes of target by 20.0%
-- If not between levels 1 - 6
-- Decreases Attack Speed of target by 20.0
-- If not between levels 1 - 6
-- Decreases Attack Speed of target by 5.0
-- If between levels 1 - 6
-- Decreases All Attributes of target by 5.0%
-- If between levels 1 - 6
-- If outside an arena

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

