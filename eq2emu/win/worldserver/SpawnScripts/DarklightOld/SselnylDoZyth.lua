--[[
	Script Name	: SpawnScripts/Darklight/SselnylDoZyth.lua
	Script Purpose	: Sselnyl Do'Zyth <Mayor>
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_STRANGE_PLANT = 79
QUEST_ITHARI_HEAD = 84
QUEST_WOLF = 86
QUEST_1 = 87

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_STRANGE_PLANT) and GetQuestStep(Spawn, QUEST_STRANGE_PLANT) == 2 then
		AddConversationOption(conversation, "Verex suggested I show this to you.", "VerexSuggested")
	end
	
	if HasQuest(Spawn, QUEST_ITHARI_HEAD) and GetQuestStep(Spawn, QUEST_ITHARI_HEAD) == 2 then
		AddConversationOption(conversation, "I have the head of Ithari K'Xyrae.", "HaveHead")
	end
	
	if HasQuest(Spawn, QUEST_WOLF) and GetQuestStep(Spawn, QUEST_WOLF) == 3 then
		AddConversationOption(conversation, "I did a favor for Jhana, she said you would reward me.", "DidFavorForJhana")
	end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		NameHasMadeTheRounds(NPC, Spawn, conversation)
	elseif HasQuest(Spawn, QUEST_1) then
		NameHasMadeTheRounds(NPC, Spawn, conversation)
	else
		if GetLevel(Spawn) < 3 then
			YesNothing(NPC, Spawn, conversation)
		else
			NameHasMadeTheRounds(NPC, Spawn, conversation)
		end
	end


	--[[if convo==5 then

	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl000_level.mp3", "", "", 1906457327, 555686310, Spawn)
		AddConversationOption(conversation, "I did a favor for Jhana, she said you would reward me.", "dlg_7_1")
		AddConversationOption(conversation, "I must be going.")
		StartConversation(conversation, NPC, Spawn, "Ah, Zuzoo. Your name has made the rounds.")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl000.mp3", "", "", 2634358899, 1353183406, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Yes?")
	end

	if convo==23 then
		PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl000_level.mp3", "", "", 1906457327, 555686310, Spawn)
		AddConversationOption(conversation, "I have been working hard.", "dlg_23_1")
		AddConversationOption(conversation, "Verex suggested I show this to you.")
		AddConversationOption(conversation, "I must be going.")
		StartConversation(conversation, NPC, Spawn, "Ah, .. GetName(Spawn) .. . Your name has made the rounds.")
	end

	if convo==24 then
		PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl000_level.mp3", "", "", 1906457327, 555686310, Spawn)
		AddConversationOption(conversation, "Verex suggested I show this to you.", "dlg_24_1")
		AddConversationOption(conversation, "I must be going.")
		StartConversation(conversation, NPC, Spawn, "Ah, .. GetName(Spawn) .. . Your name has made the rounds.")
	end

	if convo==29 then
		PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl000_level.mp3", "", "", 1906457327, 555686310, Spawn)
		AddConversationOption(conversation, "I have the head of Ithari K'Xyrae.", "dlg_29_1")
		AddConversationOption(conversation, "I did a favor for Jhana, she said you would reward me.")
		AddConversationOption(conversation, "I must be going.")
		StartConversation(conversation, NPC, Spawn, "Ah, .. GetName(Spawn) .. . Your name has made the rounds.")
	end

	if convo==30 then
		PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl000_level.mp3", "", "", 1906457327, 555686310, Spawn)
		AddConversationOption(conversation, "I have the head of Ithari K'Xyrae.", "dlg_30_1")
		AddConversationOption(conversation, "I must be going.")
		StartConversation(conversation, NPC, Spawn, "Ah, .. GetName(Spawn) .. . Your name has made the rounds.")
	end--]]

end

----------------------------------------------------------------------------------------------------------------
--					TOO LOW
----------------------------------------------------------------------------------------------------------------

function YesNothing(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl000.mp3", "", "", 2634358899, 1353183406, Spawn)
	AddConversationOption(conversation, "Nothing.")
	StartConversation(conversation, NPC, Spawn, "Yes?")
end

----------------------------------------------------------------------------------------------------------------
--					QUEST STRANGE PLANT
----------------------------------------------------------------------------------------------------------------

function VerexSuggested(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_STRANGE_PLANT, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl004.mp3", "", "", 420905398, 2169975326, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Hmm... further proof of Thelia's involvement in our problems. I will make sure the right people see this, " .. GetName(Spawn) .. ". Thank you.")
end

----------------------------------------------------------------------------------------------------------------
--					QUEST_ITHARI_HEAD
----------------------------------------------------------------------------------------------------------------

function HaveHead(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_ITHARI_HEAD, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl002.mp3", "", "", 127907352, 190256800, Spawn)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Ah, finally. They say she broke away from Thelia, but I don't believe it. Either way, it's good to have her dead, she will serve as a scapegoat for the elemental issues we've had.")
end

----------------------------------------------------------------------------------------------------------------
--					QUEST_WOLF
----------------------------------------------------------------------------------------------------------------

function DidFavorForJhana(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_WOLF, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl003.mp3", "", "", 1971223620, 3126048818, Spawn)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Ah, the troublesome wolf. Yes, yes I will pay for your help, though I don't see what the big deal was.")
end

----------------------------------------------------------------------------------------------------------------
--					QUEST 1
----------------------------------------------------------------------------------------------------------------

function NameHasMadeTheRounds(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl000_level.mp3", "", "", 1906457327, 555686310, Spawn)
	
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "I have been working hard.", "dlg_5_1")
	end
	
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "Ah, " .. GetName(Spawn) .. ". Your name has made the rounds.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl001.mp3", "", "", 2594088339, 188846195, Spawn)
	AddConversationOption(conversation, "What is the favor?", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "I am well aware of this. You have done much for Hate's Envy, and we are quite thankful. I have a favor to ask you, however.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl005.mp3", "", "", 3072015993, 436917663, Spawn)
	AddConversationOption(conversation, "Who are the Thexians?", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Dealing with the Thexians. They were reported to us before the Dread Guard. I would like to take them out before the Dread Guard have a chance to get to them to earn a bit of favor with Cristanos.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl006.mp3", "", "", 1283812606, 3397187857, Spawn)
	AddConversationOption(conversation, "I can kill them.", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "They are but insects that bite in the night, " .. GetName(Spawn) .. ". The Thexians do not recognize Cristanos as the ruler of Neriak and seek to steal the throne. They creep into the Darklight Wood and attempt to make it their own. They will fail. For now, they are attempting to harness the spirits trapped within the Wellspring of Nightmares to do their bidding.")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl007.mp3", "", "", 167173321, 813649239, Spawn)
	AddConversationOption(conversation, "Thank you.", "OfferQuest1")
	AddConversationOption(conversation, "On second thought, I don't think I'm interested.")
	StartConversation(conversation, NPC, Spawn, "Slay the ghosts they have attempted to tame. Then, find the Thexian responsible and kill them. Bring their head to Ginwyss D'Arkenett at T'Vatar Post, she will be quite happy to receive it. You can get to the Wellspring of Nightmares and the Thexians by taking the road east out of Hate's Envy. Following that road further will lead you to T'Vatar Post.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl004.mp3", "", "", 420905398, 2169975326, Spawn)
	AddConversationOption(conversation, "You're welcome.", "dlg_24_2")
	StartConversation(conversation, NPC, Spawn, "Hmm... further proof of Thelia's involvement in our problems. I will make sure the right people see this, " .. GetName(Spawn) .. ". Thank you.")
end