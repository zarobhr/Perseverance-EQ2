--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/LayonHands.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.07 06:12:55
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, statBonus, mitBonus, healMin, healMax)
    -- Increases Max Health of target by 96.7
    AddSpellBonus(Target, 500, statBonus)

    -- Increases Mitigation of target vs physical damage by 180
    AddSpellBonus(Target, 204, mitBonus)
    AddSpellBonus(Target, 205, mitBonus)
    AddSpellBonus(Target, 206, mitBonus)

    -- Heals target for 42.1 - 51.5% of max health
    --     This effect cannot be critically applied.
    local healAmount = 0
    if healMax ~= nil and healMin < healMax then
        healAmount = math.random(healMin, healMax)
    else
        healAmount = healMin
    end

    healAmount = GetMaxHP(Target) * (healAmount / 100)
    healAmount = math.floor(healAmount)
    SpellHeal("Heal", healAmount, healAmount)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
