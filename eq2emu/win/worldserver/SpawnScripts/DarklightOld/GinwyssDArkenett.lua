--[[
	Script Name	: SpawnScripts/Darklight/GinwyssDArkenett.lua
	Script Purpose	: Ginwyss D'Arkenett 
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_SPIRITS = 87
local QUEST_1 = 88
local QUEST_2 = 89

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, QUEST_SPIRITS) and GetQuestStep(Spawn, QUEST_SPIRITS) == 3 then
		AddConversationOption(conversation, "I have the head of the Thexian agent at the Wellspring of Nightmares.", "IhaveHead")
	end

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			NiceWork(NPC, Spawn, conversation)
		elseif HasQuest(Spawn, QUEST_2) then
			TakenCareOfBearCubs(NPC, Spawn, conversation)
		else
			HaveYouTrimmedBushes(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		HaveYouTrimmedBushes(NPC, Spawn, conversation)
	else
		YesWeHaveMuchToDoWith(NPC, Spawn, conversation)
	end
end

--------------------------------------------------------------------------------------
--			QUEST_SPIRITS 
--------------------------------------------------------------------------------------

function IhaveHead(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss_signets001_noquest.mp3", "", "", 1819796158, 4025167773, Spawn)
	AddConversationOption(conversation, "And I appreciate the reward.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Excellent. This is greatly appreciated.")
end

function dlg_1_2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_SPIRITS, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss_signets002.mp3", "", "", 433910996, 813528013, Spawn)
	
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "Why is that?", "dlg_1_3")
	else
		AddConversationOption(conversation, "Thanks.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Of course. We appreciate this. Anything we can do to keep the Thexians out of these woods is helpful. I am glad you have arrived.")
end

--------------------------------------------------------------------------------------
--			QUEST 1
--------------------------------------------------------------------------------------

function YesWeHaveMuchToDoWith(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss_signets000.mp3", "", "", 2883890508, 4196434666, Spawn)
	AddConversationOption(conversation, "Is there nothing I can do to help?", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Yes? We've much to deal with here, so if I seem uneager to speak with you that is why.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Oh?", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "You wish to help? If that's the case then I'm glad you're here.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss002.mp3", "", "", 2051888938, 2869043290, Spawn)
	AddConversationOption(conversation, "I am.", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "Laexyra is in charge of the Dread Guard here in the Darklight Wood. She's been moving forces deeper into the wood and will continue to do so until we control this land as cleanly as we do the city of Neriak itself. It is an honor to serve with her, a fact you shall become aware of soon, I'm sure. Are you willing to lend your assistance?")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss003.mp3", "", "", 4171771632, 4123732301, Spawn)
	AddConversationOption(conversation, "Why have they not been taken care of before?", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "That is good to hear. Your name has been mentioned, some here already know you. You can meet them later, however. For now I would like your help with the undead that infest this camp.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss004.mp3", "", "", 1036937006, 237867627, Spawn)
	AddConversationOption(conversation, "Take pleasure from it?", "dlg_1_6")
	StartConversation(conversation, NPC, Spawn, "This was once the site of a very large battle. Though ages old, new corpses--preserved by some twist of hate--resurface often. And those that are already roaming don't tend to stay 'dead' for long. In truth, they are like a garden, and we must trim them every so often. Though if one can take pleasure from it, all the better.")
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss005.mp3", "", "", 2768718577, 1991313699, Spawn)
	AddConversationOption(conversation, "Very well.", "OfferQuest1")
	AddConversationOption(conversation, "This sounds like busy work. I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "The fallen rangers and stout cadavers are the corpses of the ranger and halfling armies that attacked Neriak long ago. Take whatever pleasure you desire from further crushing their bones into the earth. So long as they are dead--though only temporarily--it serves a purpose.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function HaveYouTrimmedBushes(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss007.mp3", "", "", 2020151399, 1415738519, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 3) then
		AddConversationOption(conversation, "I have.", "dlg_8_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	StartConversation(conversation, NPC, Spawn, "Have you trimmed our ghastly bushes?")
end

function dlg_8_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 3)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss008.mp3", "", "", 2580627960, 269417647, Spawn)
	AddConversationOption(conversation, "Isn't there a way to get rid of them permanently?", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "Good. They'll be back in short order, but we must deal with their annoyance, unfortunately.")
end

-----------------------------------------------------------------------------------------------------------------
--						QUEST 2
-----------------------------------------------------------------------------------------------------------------

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss009.mp3", "", "", 1857864623, 2709965820, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "I believe Laexyra is looking into that, but she's very busy and something as trivial as occasional annoyances from zombies wandering into the camp isn't a high priority. As for me, I'm having trouble enough as is dealing with deserters.")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss010.mp3", "", "", 2898420661, 757419223, Spawn)
	AddConversationOption(conversation, "I could help again.", "dlg_8_4")
	StartConversation(conversation, NPC, Spawn, "New recruits looking for a fast track into Neriak. They work out fine for a week or so but eventually disappear, often as not I'm sure they go to the Wanderlust Fair west of here. 'Wanderlust Fever' is what we've taken to calling it. I had one leave just yesterday, and I'm having trouble finding someone to replace him.")
end

function dlg_8_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss011.mp3", "", "", 4069802667, 2412049870, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest2")
	AddConversationOption(conversation, "I would prefer not to.")
	StartConversation(conversation, NPC, Spawn, "Indeed you could. I doubt Soltrin is coming back anytime soon. I had him 'toning down' the wellspring cubs northwest of here. If you could pick up where he left off that would be great.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function TakenCareOfBearCubs(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss013.mp3", "", "", 2228874869, 1926183452, Spawn)
	
	if HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "I have.", "NiceWork")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you taken care of the bear cubs?")
end

function NiceWork(NPC, Spawn, conversation)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 2)
	end
	
	FaceTarget(NPC, Spawn)
	if conversation == nil then
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss014.mp3", "", "", 4249677162, 754047985, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Nice work, " .. GetName(Spawn) .. ". Laexyra and I appreciate it.")
end