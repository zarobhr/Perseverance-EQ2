--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/BerserkRage.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 02:08:57
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- On any combat or spell hit this spell may cast Berserk on target.  Lasts for 10.0 seconds.  Triggers about 2.0 times per minute. 
--     Increases Damage Per Second of target by 7.0
--     Increases Attack Speed of target by 7.0
-- When damaged this spell has a 30% chance to cast Berserk on target.  Lasts for 10.0 seconds.  
--     Increases Damage Per Second of target by 7.0
--     Increases Attack Speed of target by 7.0
-- On a kill this spell will cast Berserk on target.  Lasts for 10.0 seconds.  
--     Increases Damage Per Second of target by 7.0
--     Increases Attack Speed of target by 7.0

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

