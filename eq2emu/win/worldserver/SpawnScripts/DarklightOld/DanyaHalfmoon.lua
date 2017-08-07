--[[
	Script Name	: SpawnScripts/Darklight/DanyaHalfmoon.lua
	Script Purpose	: Danya Halfmoon 
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_ORDER_FROM_FILEYL = 82
QUEST_1 = 85

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_ORDER_FROM_FILEYL) and GetQuestStep(Spawn, QUEST_ORDER_FROM_FILEYL) == 1 then
		AddConversationOption(conversation, "I have your order from Fileyl", "IHaveYourOrder")
	end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/quest/hates_envy/qst_danya_done_ba2066a8.mp3", "", "", 2678058007, 1352299031, Spawn)
		if HasQuest(Spawn, QUEST_ORDER_FROM_FILEYL) and GetQuestStep(Spawn, QUEST_ORDER_FROM_FILEYL) == 1 then
			StartConversation(conversation, NPC, Spawn, "You know, one of the reasons I asked you to get me ore is so I can get some work done!")
		else
			Say(NPC, "You know, one of the reasons I asked you to get me ore is so I can get some work done!", Spawn)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		HaveYouBroughtOre(NPC, Spawn, conversation)
	else
		if GetLevel(Spawn) < 3 then
			PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/quest/hates_envy/qst_danya_toolow_d63cbe27.mp3", "", "", 1007828063, 3522254640, Spawn)
			if HasQuest(Spawn, QUEST_ORDER_FROM_FILEYL) and GetQuestStep(Spawn, QUEST_ORDER_FROM_FILEYL) == 1 then
				StartConversation(conversation, NPC, Spawn, "I'm a little tense, perhaps you should leave me be.")
			else
				Say(NPC, "I'm a little tense, perhaps you should leave me be.", Spawn)
			end
		else
			WhatDoYouNeed(NPC, Spawn, conversation)
		end
	end
end

-------------------------------------------------------------------------------------
--			QUEST_ORDER_FROM_FILEYL
-------------------------------------------------------------------------------------

function IHaveYourOrder(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_ORDER_FROM_FILEYL, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya001.mp3", "", "", 3101476695, 926478435, Spawn)
	AddConversationOption(conversation, "You mentioned something about work?", "dlg_8_1")
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Ah. Then I appreciate it.")
end

-------------------------------------------------------------------------------------
--			QUEST 1
-------------------------------------------------------------------------------------

function WhatDoYouNeed(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya000.mp3", "", "", 3154437003, 176778633, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_8_1")
	AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "What do you need? Just looking for a job?")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya003.mp3", "", "", 470214479, 1083810129, Spawn)
	AddConversationOption(conversation, "You want ore from the mine.", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "Things have been really slow around here for me ever since the elementals pushed the miners out of Sablevein Tear. If I'm not constantly working I get agitated, and annoyed. But without ore from the mine I can't work. I'm sure you see where this is going.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya004.mp3", "", "", 3325647670, 962149852, Spawn)
	AddConversationOption(conversation, "I can get it.", "OfferQuest1")
	AddConversationOption(conversation, "I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "Bingo. The ore that Sablevein Tear is named for can't be mined with normal equipment, it will just break it. But as the ore is prepared for extraction, the miners will accidentally chip pieces of it off. You can find these pieces mixed in with other rocks and bits of earth. I can refine even these small amounts and turn it into something workable. I'd like you to bring me some of the Sablevein rubble from the cave.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function HaveYouBroughtOre(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya006.mp3", "", "", 2899629615, 2055968822, Spawn)
	
	if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "Yes, here you are.", "dlg_20_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "I am eager to work, have you brought the ore?")
end

function dlg_20_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya007.mp3", "", "", 2771597308, 3920757098, Spawn)
	AddConversationOption(conversation, "You're welcome.", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "Finally! You have my thanks, and the thanks of everyone who's had to deal with me in the past few days.")
end