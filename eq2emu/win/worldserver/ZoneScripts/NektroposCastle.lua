--[[
	Script Name	: ZoneScripts/NektroposCastle.lua
	Script Purpose	: Nektropos Castle
	Script Author	: smash
	Script Date	: 2016.1.24
	Script Notes	: 
--]]

function init_zone_script(Zone)
    SetLocationProximityFunction(Zone, -0.05, -0.34, 33.54, 10, "OfferVisionsOfHatred", "Leave")
    SetLocationProximityFunction(Zone, -51, 14, 80, 10, "SpawnArchfiend", "Leave")
    SetLocationProximityFunction(Zone, 57, 14, -84, 10, "SpawnNythDollsBed", "Leave")
    SetLocationProximityFunction(Zone, -27, 13, -28, 7, "SpawnNythDollsBedroomMaltus", "Leave")
    SetLocationProximityFunction(Zone, -40, -13, -45, 7, "SpawnNythDollsBasement1", "Leave")
    SetLocationProximityFunction(Zone, -24, -13, -45, 7, "SpawnNythDollsBasement2", "Leave")
end

function OfferVisionsOfHatred(Zone, Player)
    if CanReceiveQuest(Player, 173) then
        OfferQuest(nil,Player, 173)
        SendMessage(Player, "A strange hatred grows inside you.")
    end
end

function Leave(Zone, Player)
end

function SpawnArchfiend(Zone, Player)
    --Using deirdre's door to keep track on if this mob was spawned
    local door = GetSpawnByLocationID(Zone, 1439497)
    if door == nil then
        return
    end
    
    if GetTempVariable(door, "ArchfiendSpawned") ~= "true" then
        --Spawn Archfiend Izzoroth
        SetTempVariable(door, "ArchfiendSpawned", "true")
        SpawnByLocationID(Zone, 616612)
    end
end

function SpawnNythDollsBed(Zone, Player)
    local bed = GetSpawnByLocationID(Zone, 439534)
    
    if GetTempVariable(bed, "NythDollsSpawned") ~= "true" then
        SpawnGroupByID(Zone, 1043630)
        SetTempVariable(bed, "NythDollsSpawned", "true")
        SendMessage(Player, "As you approach the bed dolls scurry out from under the bed to attack.")
    end
end

function SpawnNythDollsBedroomMaltus(Zone, Player)
    local door = GetSpawnByLocationID(Zone, 1439456)
    
    if GetTempVariable(door, "NythDollsSpawned") ~= "true" then
        SpawnGroupByID(Zone, 43686)
        SetTempVariable(door, "NythDollsSpawned", "true")
        SendMessage(Player, "You hear the sound of tiny voices laughing at you.")
    end
end

function SpawnNythDollsBasement1(Zone, Player)
    local door = GetSpawnByLocationID(Zone, 1439456)
    
    if GetTempVariable(door, "NythDollsBasementSpawned") ~= "true" then
        SpawnGroupByID(Zone, 43685)
        SetTempVariable(door, "NythDollsBasementSpawned", "true")
        SendMessage(Player, "You hear the sound of tiny voices laughing at you.")
    end
end

function SpawnNythDollsBasement2(Zone, Player)
    local door = GetSpawnByLocationID(Zone, 1439456)
    
    if GetTempVariable(door, "NythDollsBasementSpawned2") ~= "true" then
        SpawnGroupByID(Zone, 43686)
        SetTempVariable(door, "NythDollsBasementSpawned2", "true")
        SendMessage(Player, "You hear the sound of tiny voices laughing at you.")
    end
end