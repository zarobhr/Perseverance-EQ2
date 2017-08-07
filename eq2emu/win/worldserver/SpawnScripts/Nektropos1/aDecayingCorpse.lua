--[[
	Script Name		:	SpawnScripts/Nektropos1/aDecayingCorpse.lua
	Script Purpose	:	The summon animation on zombies
	Script Author	:	smash
	Script Date		:	9/12/2016
	Script Notes	:	
--]]

function spawn(NPC)
	AddTimer(NPC, 2400, "PlayAnim")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function PlayAnim(NPC)
	PlayAnimation(NPC, 13016)
end