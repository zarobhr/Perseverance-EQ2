--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/InsidiousWhisper.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 06:08:28
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinTauntVal, MaxTauntVal, MinTauntTick, MaxTauntTick, MinTauntVal2, MaxTauntVal2, MinTauntTick2, MaxTauntTick2, DDType, MinDDVal, MaxDDVal, DoTType, MinDoTVal, MaxDoTVal)

    -- Taunt component
    if MaxTauntVal ~= nil and MinTauntVal < MaxTauntVal then
      hateAmount = math.random(MinTauntVal, MaxTauntVal)
      AddHate(Caster, Target, hateAmount)
    else
      AddHate(Caster, Target, MinTauntVal)
    end

    -- Taunt 2 component
    if MaxTauntVal2 ~= nil and MinTauntVal2 < MaxTauntVal2 then
      hateAmount = math.random(MinTauntVal2, MaxTauntVal2)
      AddHate(Caster, Target, hateAmount)
    else
      AddHate(Caster, Target, MinTauntVa2l)
    end
  
    -- Disease component
    if MaxDDVal ~= nil and MinDDVal < MaxDDVal then
        dmgAmount = math.random(MinDDVal, MaxDDVal)
        SpellDamage(Target, DDType, dmgAmount)
    else
        SpellDamage(Target, DDType, MinDDVal)
    end

end

function tick(Caster, Target, MinTauntVal, MaxTauntVal, MinTauntTick, MaxTauntTick, MinTauntVal2, MaxTauntVal2, MinTauntTick2, MaxTauntTick2, DDType, MinDDVal, MaxDDVal, DoTType, MinDoTVal, MaxDoTVal)

    -- Taunt component
    if MaxTauntTick ~= nil and MinTauntTick < MaxTauntTick then
      hateAmount = math.random(MinTauntTick, MaxTauntTick)
      AddHate(Caster, Target, hateAmount)
    else
      AddHate(Caster, Target, MinTauntTick)
    end

    -- Taunt 2 component
    if MaxTauntTick2 ~= nil and MinTauntTick2 < MaxTauntTick2 then
      hateAmount = math.random(MinTauntTick2, MaxTauntTick2)
      AddHate(Caster, Target, hateAmount)
    else
      AddHate(Caster, Target, MinTauntTick2)
    end

    -- Disease component
    if MaxDoTVal ~= nil and MinDoTVal < MaxDoTVal then
        dmgAmount = math.random(MinDoTVal, MaxDoTVal)
        SpellDamage(Target, DoTType, dmgAmount)
    else
        SpellDamage(Target, DoTType, MinDoTVal)
    end

end
