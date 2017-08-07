--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/DarkHeart.lua
    Script Author  : 
    Script Date    : 2013.12.08 02:12:28
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, ItemID)
    -- Summon 1 Dark Heart (Apprentice)
    if not HasItem(Target, ItemID) then
        SummonItem(Target, ItemID)
    end
end
