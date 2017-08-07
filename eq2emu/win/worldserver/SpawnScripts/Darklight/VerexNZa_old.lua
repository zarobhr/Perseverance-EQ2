--[[
	Script Name	: SpawnScripts/Darklight/VerexNZa.lua
	Script Purpose	: Verex N'Za 
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 75
QUEST_2 = 76
QUEST_3 = 77
QUEST_4 = 78
QUEST_STANGE_PLANT = 79

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_STRANGE_PLANT) and GetQuestStep(Spawn, QUEST_STRANGE_PLANT) == 1 then
		AddConversationOption(conversation, "I found this strange plant in there.", "FoundStrangePlant")
	end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					dlg_21_2(NPC, Spawn, true)
				elseif HasQuest(Spawn, QUEST_4) then
					TheCaves(NPC, Spawn, conversation)
				else
					Finished(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				Finished(NPC, Spawn, conversation)
			else
				TheDuskProwlers(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			TheDuskProwlers(NPC, Spawn, conversation)
		else
			HaveYouTakenThemOut(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		HaveYouTakenThemOut(NPC, Spawn, conversation)
	else
		YeahYoullDo(NPC, Spawn, conversation)
	end

		--[[

	end

	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex016.mp3", "", "", 1856431729, 128783705, Spawn)
		AddConversationOption(conversation, "Thanks for the advice.", "dlg_22_1")
		AddConversationOption(conversation, "I found this strange plant in there.")
		StartConversation(conversation, NPC, Spawn, "And if you ever venture into Neriak see that you don't kill the wrong person. You don't want to end up stuck out here like me.")
	end--]]

end

------------------------------------------------------------------------------------
--				QUEST 1
------------------------------------------------------------------------------------

function YeahYoullDo(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex000.mp3", "", "", 987053612, 663106219, Spawn)
	AddConversationOption(conversation, "Yes, I am ready.", "dlg_0_1")
	AddConversationOption(conversation, "What is this place?", "HatesEnvyOutpost")
	AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "Yeah, you'll do. The Sablevein, ahem, annoyance is getting out of hand. The elementals burst out of Sablevein Tear a few nights ago and have been wrecking everything they touch just outside the gates behind me. Are you ready to start pulling your weight?")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex001.mp3", "", "", 2449864422, 754339402, Spawn)
	AddConversationOption(conversation, "I can take them out.", "OfferQuest1")
	AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "The elementals that are running amok behind me are the first thing that need to be taken care of. They've spilled out of the cave and are starting to explore... and demolish. It's up to us to stop them.")
end

function HatesEnvyOutpost(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro000.mp3", "", "", 3043845140, 3293355354, Spawn)
	AddConversationOption(conversation, "What do you mean?", "WeRunOurselves")
	StartConversation(conversation, NPC, Spawn, "Hate's Envy Outpost. The pride of Sselnyl Do'Zyth herself. She's managed to work out a nice deal with the elite of Neriak and runs Hate's Envy as an entity outside--both literally and figuratively--of the city itself.")
end

function WeRunOurselves(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro001.mp3", "", "", 3697487212, 3882190905, Spawn)
	AddConversationOption(conversation, "So you aren't tied to Neriak?", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "We run ourselves out here. Neriak doesn't get into our affairs, though we still live by a large number of her laws, the most notable difference is our varied population. Hate's Envy is a bit more accepting of outsiders. We need all the help we can get, as you may have noticed. The elementals are proof enough of that. But, we like it this way.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro002.mp3", "", "", 4241349450, 1377465908, Spawn)
	AddConversationOption(conversation, "Hate's Envy was built by the Thexians?", "dlg_0_5")
	StartConversation(conversation, NPC, Spawn, "Oh, we're tied to Neriak all right. When Neriak was unearthed the first order the Queen gave to the Dread Guard was to claim all of Darklight. The Thexians had built Hate's Envy in their search for Neriak. We were quite thankful. Sselnyl was given control of the outpost's politics. We work closely with the Dread Guard and the Indigo Brotherhood, and our mining operation provides much needed ore to Neriak.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro003.mp3", "", "", 2490454779, 577178082, Spawn)
	
	quest_function = ""
	if HasCompletedQuest(Spawn, QUEST_1) then
		quest_function = "dlg_1_2"
	else
		quest_function = "dlg_0_1"
	end
	
	AddConversationOption(conversation, "Interesting. What work were you talking about before?", quest_function)
	AddConversationOption(conversation, "Interesting. Thank you.")
	StartConversation(conversation, NPC, Spawn, "That's correct. When Lucan and the Thexians barged into Darklight and dug up K'Rais tunnel, the Thexians had already been searching for Neriak. Hate's Envy was theirs, with Neriak and Darklight connected, we quickly removed most of their numbers. They are tenacious, though. Either way, we own Hate's Envy now. Part of our pact with Freeport involves one of their ambassadors present at all times--but doesn't seem to take much interest in the day to day affairs of Hate's Envy. Sselnyl runs the show, that's the bottom line.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function HaveYouTakenThemOut(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex003.mp3", "", "", 2987936087, 1183920050, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes, I have.", "dlg_1_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you taken them out?")
end

function dlg_1_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex004.mp3", "", "", 1722207722, 3360208876, Spawn)
	AddConversationOption(conversation, "I am ready.", "dlg_1_2")
	AddConversationOption(conversation, "Actually, what is this place?", "HatesEnvyOutpost")
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Excellent. The quicker we clean this place up the quicker we can get our miners back in that cave. Are you ready for more work?")
end

-------------------------------------------------------------------------------------
--			QUEST 2
-------------------------------------------------------------------------------------

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex005.mp3", "", "", 1638345675, 2308676427, Spawn)
	AddConversationOption(conversation, "I can.", "OfferQuest2")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Good. In dealing with the elementals we've been getting overwhelmed by problems that used to be easily contained. The wolves around Hate's Envy are... numerous. There are enough of them to hamper our efforts to reclaim the Sablevein Tear. They're bold, and our presence no longer scares them. We'd like to change that, can you do it?")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function TheDuskProwlers(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex007.mp3", "", "", 2560645118, 4135025408, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_2) and not HasCompletedQuest(Spawn, QUEST_3)) or (HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2) then
		AddConversationOption(conversation, "Dead.", "dlg_6_1")
	else
		AddConversationOption(conversation, "Still out there.")
	end
	StartConversation(conversation, NPC, Spawn, "The dusk prowlers?")
end

function dlg_6_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex008.mp3", "", "", 1942649804, 4187915699, Spawn)
	AddConversationOption(conversation, "So what is the first step?", "dlg_6_2")
	StartConversation(conversation, NPC, Spawn, "Nice work, " .. GetName(Spawn) .. ", but there are still several tasks ahead. We'd like to get our miners back in that cave as soon as possible, but they won't get near the cave until the elementals are taken care of. Many of the miners were in the caves when the walls birthed the elementals... they aren't eager to return.")
end

----------------------------------------------------------------------------------------
--				QUEST 3
----------------------------------------------------------------------------------------

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex009.mp3", "", "", 3762973180, 2568156542, Spawn)
	AddConversationOption(conversation, "I am.", "OfferQuest3")
	AddConversationOption(conversation, "I am not willing.")
	StartConversation(conversation, NPC, Spawn, "To take out the pulverizers just outside the cave mouth. Are you willing?")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function Finished(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex011.mp3", "", "", 1897035724, 3124277697, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_3) and not HasCompletedQuest(Spawn, QUEST_4)) or (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 2) then
		AddConversationOption(conversation, "Yes.", "dlg_12_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	StartConversation(conversation, NPC, Spawn, "Finished?")
end

function dlg_12_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) then
		SetStepComplete(Spawn, QUEST_3, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex012.mp3", "", "", 2904769252, 751484, Spawn)
	AddConversationOption(conversation, "I am ready.", "OfferQuest4")
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Good, that puts the goal within our grasp. We need only to clear out the elementals within the cave now.")
end

------------------------------------------------------------------------------------
--			QUEST 4
------------------------------------------------------------------------------------

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function TheCaves(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex014.mp3", "", "", 3077354756, 2717574470, Spawn)
	
	if HasQuest(Spawn, QUEST_4) and GetQuestStep(Spawn, QUEST_4) == 2 then
		AddConversationOption(conversation, "The elementals are gone.", "dlg_21_1")
	else
		AddConversationOption(conversation, "I haven't killed the elementals yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "The caves?")
end

function dlg_21_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_4) then
		SetStepComplete(Spawn, QUEST_4, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex015.mp3", "", "", 3736047130, 3530972833, Spawn)
	AddConversationOption(conversation, "I appreciate it.", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "Perfect. I'll let our miners know that they're going to have to start working again. I'm sure they'll be thrilled... heh. Good work, ".. GetName(Spawn) .. ". You're on the right path.")
end

------------------------------------------------------------------------------------------------
--				DONE QUESTS
------------------------------------------------------------------------------------------------

function dlg_21_2(NPC, Spawn, HasPlant)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex016.mp3", "", "", 1856431729, 128783705, Spawn)
	AddConversationOption(conversation, "Thanks for the advice.")
	
	if HasPlant ~= nil and HasQuest(Spawn, QUEST_STRANGE_PLANT) and GetQuestStep(Spawn, QUEST_STRANGE_PLANT) == 1 then
		AddConversationOption(conversation, "I found this strange plant in there.", "FoundStrangePlant")
	end
	
	StartConversation(conversation, NPC, Spawn, "And if you ever venture into Neriak see that you don't kill the wrong person. You don't want to end up stuck out here like me.")
end

-------------------------------------------------------------------------------------------------
--			STRANGE PLANT QUEST
-------------------------------------------------------------------------------------------------

function FoundStrangePlant(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_STRANGE_PLANT, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex017.mp3", "", "", 1163301017, 3037245363, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "Odd. There was no flora in that cave when we were mining it. You should show this to Sselnyl Do'Zyth. You can find her in the central building in Hate's Envy.")
end


function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex018.mp3", "", "", 264191264, 3684894471, Spawn)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "She'll know what to make of it.")
end