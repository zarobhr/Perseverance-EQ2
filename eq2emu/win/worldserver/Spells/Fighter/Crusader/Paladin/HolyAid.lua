--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/HolyAid.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.06 06:12:21
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, PhyBonus)
    -- Heals target for 175 - 213
    --     This effect cannot be critically applied.
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellHeal("Heal", math.random(MinVal, MaxVal))
    else
        SpellHeal("Heal", MinVal)
    end

    -- Increases Mitigation of target vs physical damage by 76
    AddSpellBonus(Target, 200, PhyBonus)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
