--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/ShardofEssence.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 07:03:12
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, ItemID)
    -- Summon 1 Shard of Essence (Apprentice)
    SummonItem(Target, ItemID, 1)
end
