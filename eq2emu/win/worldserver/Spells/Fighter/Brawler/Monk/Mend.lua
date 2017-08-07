--[[
    Script Name    : Spells/Fighter/Brawler/Monk/Mend.lua
    Script Author  : Dello
    Script Date    : 19/07/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, CureLvls)
   local spell_name = GetSpellName()
   if spell_name ~= "Mend" and spell_name ~= "Mend II" then
      local max_hp = GetMaxHP(Target)
      MinVal = (max_hp * (MinVal / 100))
      MaxVal = (max_hp * (MaxVal / 100))
   end
    -- Heals target for 21 - 25
    --     This effect cannot be critically applied.
    -- The healing of this spell cannot be modified except by direct means
    SpellHeal("Heal", MinVal, MaxVal, 0, 2, 1)

    -- Dispels 7 levels of noxious hostile effects on target
    CureByType(CureLvls, 3);
end