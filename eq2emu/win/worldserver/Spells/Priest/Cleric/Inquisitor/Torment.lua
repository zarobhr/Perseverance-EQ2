--[[
	Script Name	: Torment.lua
	Script Purpose	: Inquisitor Debuff + DoT Damage
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	:
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, Debuff)
    -- Debuff component
    AddSpellBonus(Target, 203, Debuff)
    -- Instant Damage
    dmgAmount = math.random(MinDmg, MaxDmg)
    if MaxDmg ~= nil and MinDmg < MaxDmg then
        SpellDamage(Target, DmgType, dmgAmount)
    else
        SpellDamage(Target, DmgType, MinDmg)
    end
end

function tick(Caster, Target, DmgType, MinDmg, MaxDmg, Debuff)
    -- DoT component
    dmgAmount = math.random(MinDmg, MaxDmg)
    if MaxDmg ~= nil and MinDmg < MaxDmg then
	SpellDamage(Target, DmgType, dmgAmount)
    else
	SpellDamage(Target, DmgType, MinDmg)
    end
end

function remove(Caster, Target, DmgType, MinDmg, MaxDmg, Debuff)

    RemoveSpellBonus(Target)

end
