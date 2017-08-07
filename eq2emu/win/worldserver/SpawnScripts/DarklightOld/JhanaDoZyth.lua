--[[
	Script Name	: SpawnScripts/Darklight/JhanaDoZyth.lua
	Script Purpose	: Jhana Do'Zyth 
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 86

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		Say(NPC, "That wolf is FINALLY gone.", Spawn)
	elseif HasQuest(Spawn, QUEST_1) then
		if GetQuestStep(Spawn, QUEST_1) == 1 or GetQuestStep(Spawn, QUEST_1) == 2 then
			HaveYouSlainTheWolf(NPC, Spawn, conversation)
		else
			Say(NPC, "That wolf is FINALLY gone.", Spawn)
		end
	else
		if GetLevel(Spawn) < 3 then
			PlayFlavor(NPC, "voiceover/english/neriak/jhana_do_zyth/darklight_wood/quest/hates_envy/qst_jhana_too_low_ee52f282.mp3", "Maybe you could help me... if you were a little bit stronger.", "", 1579540723, 4221550003, Spawn)
		else
			WhatsThisACommoner(NPC, Spawn, conversation)
		end
	end
end

-----------------------------------------------------------------------------------
--				QUEST 1
-----------------------------------------------------------------------------------

function WhatsThisACommoner(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/jhana_do_zyth/darklight_wood/hates_envy/jhana/jhana000.mp3", "", "", 1984758472, 944357016, Spawn)
	AddConversationOption(conversation, "A commoner?", "dlg_3_1")
	AddConversationOption(conversation, "Yes, my apologies. I did not mean to bother you.", "NoNoStayAMoment")
	StartConversation(conversation, NPC, Spawn, "Oh, and what's this? A commoner?")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/jhana_do_zyth/darklight_wood/hates_envy/jhana/jhana001.mp3", "", "", 1939761338, 616260262, Spawn)
	AddConversationOption(conversation, "What kind of help?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Well I AM the mayor's daughter. Though sometimes she seems to forget it. You can help me where she has not, though.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/jhana_do_zyth/darklight_wood/hates_envy/jhana/jhana003.mp3", "", "", 1659780090, 747223964, Spawn)
	AddConversationOption(conversation, "Very well, where is this wolf?", "OfferQuest1")
	AddConversationOption(conversation, "This doesn't sound like something I'd be interested in.")
	StartConversation(conversation, NPC, Spawn, "A wolf has taken residence in what was once my area. A girl my age mustn't be kept inside all day, my muscles will atrophy. Weaklings never make it in this world. I am not yet trained, though, and I cannot take on a wolf of this size. Oh, I have pleaded with my mother, but she has her mind on other things. The point is, without the .. GetName(Spawn) .. . to go outside and train, I will never be able to take on a wolf such as the one that is preventing me from doing so now! If you help me, my mother will pay you for your time.")
end

function NoNoStayAMoment(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What kind of help?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "No, no. Stay a moment. Perhaps you can help me where mother has failed.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function HaveYouSlainTheWolf(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/jhana_do_zyth/darklight_wood/hates_envy/jhana/jhana006.mp3", "", "", 3892809500, 404724544, Spawn)
	
	if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "I have.", "dlg_28_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you slain the wolf?")
end

function dlg_28_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/jhana_do_zyth/darklight_wood/hates_envy/jhana/jhana007.mp3", "", "curtsey", 286612396, 594633350, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Good. Tell my mother what you have done for me and she will pay you. And, my word will help your reputation when you might need it.")
end