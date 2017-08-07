--[[
    Script Name    : SpawnScripts/QueensColony/ebiksspinner.lua
    Script Author  : Jabantiz
    Script Date    : 2016.09.13 12:09:46
    Script Purpose : 
                   : 
--]]

local EbiksMissingParts = 185

function spawn(NPC)
	SetRequiredQuest(NPC, EbiksMissingParts, 3)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "search parts" then
		SetStepComplete(Spawn, EbiksMissingParts, 3)
	end
end