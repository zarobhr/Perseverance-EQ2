--[[
	Script Name	: SpawnScripts/DarklightWood/VerexNZa.lua
	Script Purpose	: Verex N'Za 
	Script Author	: Cynnar
	Script Date	: 2015.01.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "You there, come here at once! We haven't a second to spare!", "beckon", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How am I to do that?", "dlg_0_1")
		AddConversationOption(conversation, "Wait, where is this place?")
	StartConversation(conversation, NPC, Spawn, "Excellent, you've finally arrived. So, you're one of Cristanos' chosen ones, hmm? The Queen must see some great potential in you, Oamoothao. Let's not waste any more time and see what you're made of.")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex003.mp3", "", "", 2987936087, 1183920050, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken them out?")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex003.mp3", "", "", 2987936087, 1183920050, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken them out?")
	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex007.mp3", "", "", 2560645118, 4135025408, Spawn)
		AddConversationOption(conversation, "Dead.", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "The dusk prowlers?")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex007.mp3", "", "", 2560645118, 4135025408, Spawn)
		AddConversationOption(conversation, "Dead.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "The dusk prowlers?")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex014.mp3", "", "", 3077354756, 2717574470, Spawn)
		AddConversationOption(conversation, "The elementals are gone.", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "The caves?")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex000.mp3", "", "", 987053612, 663106219, Spawn)
		AddConversationOption(conversation, "Yes, I am ready.", "dlg_11_1")
		AddConversationOption(conversation, "What is this place?")
		AddConversationOption(conversation, "No.")
		StartConversation(conversation, NPC, Spawn, "Yeah, you'll do. The Sablevein, ahem, annoyance is getting out of hand. The elementals burst out of Sablevein Tear a few nights ago and have been wrecking everything they touch just outside the gates behind me. Are you ready to start pulling your weight?")
	end

	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex000.mp3", "", "", 987053612, 663106219, Spawn)
		AddConversationOption(conversation, "Yes, I am ready.", "dlg_12_1")
		AddConversationOption(conversation, "What is this place?")
		AddConversationOption(conversation, "No.")
		StartConversation(conversation, NPC, Spawn, "Yeah, you'll do. The Sablevein, ahem, annoyance is getting out of hand. The elementals burst out of Sablevein Tear a few nights ago and have been wrecking everything they touch just outside the gates behind me. Are you ready to start pulling your weight?")
	end

	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex000.mp3", "", "", 987053612, 663106219, Spawn)
		AddConversationOption(conversation, "Yes, I am ready.", "dlg_13_1")
		AddConversationOption(conversation, "What is this place?")
		AddConversationOption(conversation, "No.")
		StartConversation(conversation, NPC, Spawn, "Yeah, you'll do. The Sablevein, ahem, annoyance is getting out of hand. The elementals burst out of Sablevein Tear a few nights ago and have been wrecking everything they touch just outside the gates behind me. Are you ready to start pulling your weight?")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex000.mp3", "", "", 987053612, 663106219, Spawn)
		AddConversationOption(conversation, "Yes, I am ready.", "dlg_14_1")
		AddConversationOption(conversation, "What is this place?")
		AddConversationOption(conversation, "No.")
		StartConversation(conversation, NPC, Spawn, "Yeah, you'll do. The Sablevein, ahem, annoyance is getting out of hand. The elementals burst out of Sablevein Tear a few nights ago and have been wrecking everything they touch just outside the gates behind me. Are you ready to start pulling your weight?")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex003.mp3", "", "", 2987936087, 1183920050, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken them out?")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex003.mp3", "", "", 2987936087, 1183920050, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_16_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken them out?")
	end

	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex003.mp3", "", "", 2987936087, 1183920050, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_17_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken them out?")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex007.mp3", "", "", 2560645118, 4135025408, Spawn)
		AddConversationOption(conversation, "Dead.", "dlg_19_1")
		StartConversation(conversation, NPC, Spawn, "The dusk prowlers?")
	end

	if convo==21 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex014.mp3", "", "", 3077354756, 2717574470, Spawn)
		AddConversationOption(conversation, "The elementals are gone.", "dlg_21_1")
		AddConversationOption(conversation, "I found this strange plant in there.")
		StartConversation(conversation, NPC, Spawn, "The caves?")
	end

	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex016.mp3", "", "", 1856431729, 128783705, Spawn)
		AddConversationOption(conversation, "Thanks for the advice.", "dlg_22_1")
		AddConversationOption(conversation, "I found this strange plant in there.")
		StartConversation(conversation, NPC, Spawn, "And if you ever venture into Neriak see that you don't kill the wrong person. You don't want to end up stuck out here like me.")
	end

	if convo==25 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex011.mp3", "", "", 1897035724, 3124277697, Spawn)
		AddConversationOption(conversation, "Yes.", "dlg_25_1")
		StartConversation(conversation, NPC, Spawn, "Finished?")
	end

	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex011.mp3", "", "", 1897035724, 3124277697, Spawn)
		AddConversationOption(conversation, "Yes.", "dlg_26_1")
		StartConversation(conversation, NPC, Spawn, "Finished?")
	end

	if convo==40 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex014.mp3", "", "", 3077354756, 2717574470, Spawn)
		AddConversationOption(conversation, "The elementals are gone.", "dlg_40_1")
		AddConversationOption(conversation, "I found this strange plant in there.")
		StartConversation(conversation, NPC, Spawn, "The caves?")
	end

	if convo==41 then
		PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex014.mp3", "", "", 3077354756, 2717574470, Spawn)
		AddConversationOption(conversation, "The elementals are gone.", "dlg_41_1")
		StartConversation(conversation, NPC, Spawn, "The caves?")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is it you would have me do?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Hate's Envy has fallen under attack by an army of Sablevein elementals! We need your help in stopping them before they burn down the entire town! ")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro000.mp3", "", "", 3043845140, 3293355354, Spawn)
		AddConversationOption(conversation, "What do you mean?")
	StartConversation(conversation, NPC, Spawn, "Hate's Envy Outpost. The pride of Sselnyl Do'Zyth herself. She's managed to work out a nice deal with the elite of Neriak and runs Hate's Envy as an entity outside--both literally and figuratively--of the city itself.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will speak with them at once!", "dlg_0_3")
		AddConversationOption(conversation, "I'll decide who I speak to!")
	StartConversation(conversation, NPC, Spawn, "The Sablevein elementals have collapsed a section of the southern wall and now threaten to swarm inside the town. I need you to meet up with Udiyitas and Pellandra, two of the guards tasked with repelling this attack. Go, speak to them at once!")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro000.mp3", "", "", 3043845140, 3293355354, Spawn)
		AddConversationOption(conversation, "What do you mean?")
	StartConversation(conversation, NPC, Spawn, "Hate's Envy Outpost. The pride of Sselnyl Do'Zyth herself. She's managed to work out a nice deal with the elite of Neriak and runs Hate's Envy as an entity outside--both literally and figuratively--of the city itself.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	StartConversation(conversation, NPC, Spawn, "May Innoruuk guide your blade, young one!")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro003.mp3", "", "", 2490454779, 577178082, Spawn)
		AddConversationOption(conversation, "Interesting. What work were you talking about before?", "dlg_0_5")
		AddConversationOption(conversation, "Interesting. Thank you.")
	StartConversation(conversation, NPC, Spawn, "That's correct. When Lucan and the Thexians barged into Darklight and dug up K'Rais tunnel, the Thexians had already been searching for Neriak. Hate's Envy was theirs, with Neriak and Darklight connected, we quickly removed most of their numbers. They are tenacious, though. Either way, we own Hate's Envy now. Part of our pact with Freeport involves one of their ambassadors present at all times--but doesn't seem to take much interest in the day to day affairs of Hate's Envy. Sselnyl runs the show, that's the bottom line.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex002.mp3", "", "", 2793599050, 2740987353, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "Good. Return to me once you're done.")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will speak with them at once!", "dlg_0_7")
		AddConversationOption(conversation, "I'll decide who I speak to!")
	StartConversation(conversation, NPC, Spawn, "The Sablevein elementals have collapsed a section of the southern wall and now threaten to swarm inside the town. I need you to meet up with Udiyitas and Pellandra, two of the guards tasked with repelling this attack. Go, speak to them at once!")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex004.mp3", "", "", 1722207722, 3360208876, Spawn)
		AddConversationOption(conversation, "I am ready.", "dlg_1_2")
		AddConversationOption(conversation, "Actually, what is this place?")
		AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Excellent. The quicker we clean this place up the quicker we can get our miners back in that cave. Are you ready for more work?")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex017.mp3", "", "", 1163301017, 3037245363, Spawn)
		AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Odd. There was no flora in that cave when we were mining it. You should show this to Sselnyl Do'Zyth. You can find her in the central building in Hate's Envy.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex005.mp3", "", "", 1638345675, 2308676427, Spawn)
		AddConversationOption(conversation, "I can.", "dlg_1_3")
		AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Good. In dealing with the elementals we've been getting overwhelmed by problems that used to be easily contained. The wolves around Hate's Envy are... numerous. There are enough of them to hamper our efforts to reclaim the Sablevein Tear. They're bold, and our presence no longer scares them. We'd like to change that, can you do it?")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex006.mp3", "", "", 1353181644, 668433489, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "Good to hear. Return to me once you've finished.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex004.mp3", "", "", 1722207722, 3360208876, Spawn)
		AddConversationOption(conversation, "I am ready.", "dlg_2_2")
		AddConversationOption(conversation, "Actually, what is this place?")
		AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Excellent. The quicker we clean this place up the quicker we can get our miners back in that cave. Are you ready for more work?")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What do you mean?")
	StartConversation(conversation, NPC, Spawn, "This is Hate's Envy Outpost; the pride of Sselnyl Do'Zyth herself. She's managed to work out a nice deal with the elite of Neriak and runs Hate's Envy as an entity apart from the city itself.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex005.mp3", "", "", 1638345675, 2308676427, Spawn)
		AddConversationOption(conversation, "I can.", "dlg_2_3")
		AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Good. In dealing with the elementals we've been getting overwhelmed by problems that used to be easily contained. The wolves around Hate's Envy are... numerous. There are enough of them to hamper our efforts to reclaim the Sablevein Tear. They're bold, and our presence no longer scares them. We'd like to change that, can you do it?")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex006.mp3", "", "", 1353181644, 668433489, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "Good to hear. Return to me once you've finished.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Interesting. What was it you were talking about before?", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "That's correct. When Lucan and the Thexians barged into Darklight and dug up K'Rais tunnel, the Thexians had already been searching for Neriak. Although Hate's Envy was theirs, we quickly took over once Neriak and Darklight were connected. Part of our pact with Freeport involves one of their ambassadors present at all times--but they don't seem to take much interest in the day to day affairs of Hate's Envy. Sselnyl runs the show, that's the bottom line.")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is it you would have me do?", "dlg_2_6")
	StartConversation(conversation, NPC, Spawn, "Hate's Envy has fallen under attack by an army of Sablevein elementals! We need your help in stopping them before they burn down the entire town! ")
end

function dlg_2_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will speak with them at once!", "dlg_2_7")
		AddConversationOption(conversation, "I'll decide who I speak to!")
	StartConversation(conversation, NPC, Spawn, "The Sablevein elementals have collapsed a section of the southern wall and now threaten to swarm inside the town. I need you to meet up with Udiyitas and Pellandra, two of the guards tasked with repelling this attack. Go, speak to them at once!")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex008.mp3", "", "", 1942649804, 4187915699, Spawn)
		AddConversationOption(conversation, "So what is the first step?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Nice work, Ahide, but there are still several tasks ahead. We'd like to get our miners back in that cave as soon as possible, but they won't get near the cave until the elementals are taken care of. Many of the miners were in the caves when the walls birthed the elementals... they aren't eager to return.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex009.mp3", "", "", 3762973180, 2568156542, Spawn)
		AddConversationOption(conversation, "I am.", "dlg_3_3")
		AddConversationOption(conversation, "I am not willing.")
	StartConversation(conversation, NPC, Spawn, "To take out the pulverizers just outside the cave mouth. Are you willing?")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex010.mp3", "", "", 1616419105, 2681650739, Spawn)
		AddConversationOption(conversation, "On my way.", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "All right. Get to work, then.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex008.mp3", "", "", 1942649804, 4187915699, Spawn)
		AddConversationOption(conversation, "So what is the first step?", "dlg_6_2")
	StartConversation(conversation, NPC, Spawn, "Nice work, Zuzoo, but there are still several tasks ahead. We'd like to get our miners back in that cave as soon as possible, but they won't get near the cave until the elementals are taken care of. Many of the miners were in the caves when the walls birthed the elementals... they aren't eager to return.")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex009.mp3", "", "", 3762973180, 2568156542, Spawn)
		AddConversationOption(conversation, "I am.", "dlg_6_3")
		AddConversationOption(conversation, "I am not willing.")
	StartConversation(conversation, NPC, Spawn, "To take out the pulverizers just outside the cave mouth. Are you willing?")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex010.mp3", "", "", 1616419105, 2681650739, Spawn)
		AddConversationOption(conversation, "On my way.", "dlg_6_4")
	StartConversation(conversation, NPC, Spawn, "All right. Get to work, then.")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex015.mp3", "", "", 3736047130, 3530972833, Spawn)
		AddConversationOption(conversation, "I appreciate it.", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "Perfect. I'll let our miners know that they're going to have to start working again. I'm sure they'll be thrilled... heh. Good work, Ahide. You're on the right path.")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex016.mp3", "", "", 1856431729, 128783705, Spawn)
		AddConversationOption(conversation, "Thanks for the advice.", "dlg_9_3")
	StartConversation(conversation, NPC, Spawn, "And if you ever venture into Neriak see that you don't kill the wrong person. You don't want to end up stuck out here like me.")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro000.mp3", "", "", 3043845140, 3293355354, Spawn)
		AddConversationOption(conversation, "What do you mean?")
	StartConversation(conversation, NPC, Spawn, "Hate's Envy Outpost. The pride of Sselnyl Do'Zyth herself. She's managed to work out a nice deal with the elite of Neriak and runs Hate's Envy as an entity outside--both literally and figuratively--of the city itself.")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro001.mp3", "", "", 3697487212, 3882190905, Spawn)
		AddConversationOption(conversation, "So you aren't tied to Neriak?", "dlg_11_3")
	StartConversation(conversation, NPC, Spawn, "We run ourselves out here. Neriak doesn't get into our affairs, though we still live by a large number of her laws, the most notable difference is our varied population. Hate's Envy is a bit more accepting of outsiders. We need all the help we can get, as you may have noticed. The elementals are proof enough of that. But, we like it this way.")
end

function dlg_11_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro002.mp3", "", "", 4241349450, 1377465908, Spawn)
		AddConversationOption(conversation, "Hate's Envy was built by the Thexians?", "dlg_11_4")
	StartConversation(conversation, NPC, Spawn, "Oh, we're tied to Neriak all right. When Neriak was unearthed the first order the Queen gave to the Dread Guard was to claim all of Darklight. The Thexians had built Hate's Envy in their search for Neriak. We were quite thankful. Sselnyl was given control of the outpost's politics. We work closely with the Dread Guard and the Indigo Brotherhood, and our mining operation provides much needed ore to Neriak.")
end

function dlg_11_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro003.mp3", "", "", 2490454779, 577178082, Spawn)
		AddConversationOption(conversation, "Interesting. What work were you talking about before?", "dlg_11_5")
		AddConversationOption(conversation, "Interesting. Thank you.")
	StartConversation(conversation, NPC, Spawn, "That's correct. When Lucan and the Thexians barged into Darklight and dug up K'Rais tunnel, the Thexians had already been searching for Neriak. Hate's Envy was theirs, with Neriak and Darklight connected, we quickly removed most of their numbers. They are tenacious, though. Either way, we own Hate's Envy now. Part of our pact with Freeport involves one of their ambassadors present at all times--but doesn't seem to take much interest in the day to day affairs of Hate's Envy. Sselnyl runs the show, that's the bottom line.")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex008.mp3", "", "", 1942649804, 4187915699, Spawn)
		AddConversationOption(conversation, "So what is the first step?", "dlg_12_2")
	StartConversation(conversation, NPC, Spawn, "Nice work,  .. GetName(Spawn) .. , but there are still several tasks ahead. We'd like to get our miners back in that cave as soon as possible, but they won't get near the cave until the elementals are taken care of. Many of the miners were in the caves when the walls birthed the elementals... they aren't eager to return.")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex009.mp3", "", "", 3762973180, 2568156542, Spawn)
		AddConversationOption(conversation, "I am.", "dlg_12_3")
		AddConversationOption(conversation, "I am not willing.")
	StartConversation(conversation, NPC, Spawn, "To take out the pulverizers just outside the cave mouth. Are you willing?")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex010.mp3", "", "", 1616419105, 2681650739, Spawn)
		AddConversationOption(conversation, "On my way.", "dlg_12_4")
	StartConversation(conversation, NPC, Spawn, "All right. Get to work, then.")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex001.mp3", "", "", 2449864422, 754339402, Spawn)
		AddConversationOption(conversation, "I can take them out.", "dlg_13_2")
		AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "The elementals that are running amok behind me are the first thing that need to be taken care of. They've spilled out of the cave and are starting to explore... and demolish. It's up to us to stop them.")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex001.mp3", "", "", 2449864422, 754339402, Spawn)
		AddConversationOption(conversation, "I can take them out.", "dlg_14_2")
		AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "The elementals that are running amok behind me are the first thing that need to be taken care of. They've spilled out of the cave and are starting to explore... and demolish. It's up to us to stop them.")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex002.mp3", "", "", 2793599050, 2740987353, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_14_3")
	StartConversation(conversation, NPC, Spawn, "Good. Return to me once you're done.")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex004.mp3", "", "", 1722207722, 3360208876, Spawn)
		AddConversationOption(conversation, "I am ready.", "dlg_15_2")
		AddConversationOption(conversation, "Actually, what is this place?")
		AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Excellent. The quicker we clean this place up the quicker we can get our miners back in that cave. Are you ready for more work?")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex013.mp3", "", "", 3010718218, 2537871754, Spawn)
		AddConversationOption(conversation, "I will return.", "dlg_15_3")
	StartConversation(conversation, NPC, Spawn, "I thought so.")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex004.mp3", "", "", 1722207722, 3360208876, Spawn)
		AddConversationOption(conversation, "I am ready.", "dlg_16_2")
		AddConversationOption(conversation, "Actually, what is this place?")
		AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Excellent. The quicker we clean this place up the quicker we can get our miners back in that cave. Are you ready for more work?")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro000.mp3", "", "", 3043845140, 3293355354, Spawn)
		AddConversationOption(conversation, "What do you mean?")
	StartConversation(conversation, NPC, Spawn, "Hate's Envy Outpost. The pride of Sselnyl Do'Zyth herself. She's managed to work out a nice deal with the elite of Neriak and runs Hate's Envy as an entity outside--both literally and figuratively--of the city itself.")
end

function dlg_16_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro001.mp3", "", "", 3697487212, 3882190905, Spawn)
		AddConversationOption(conversation, "So you aren't tied to Neriak?", "dlg_16_4")
	StartConversation(conversation, NPC, Spawn, "We run ourselves out here. Neriak doesn't get into our affairs, though we still live by a large number of her laws, the most notable difference is our varied population. Hate's Envy is a bit more accepting of outsiders. We need all the help we can get, as you may have noticed. The elementals are proof enough of that. But, we like it this way.")
end

function dlg_16_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro002.mp3", "", "", 4241349450, 1377465908, Spawn)
		AddConversationOption(conversation, "Hate's Envy was built by the Thexians?", "dlg_16_5")
	StartConversation(conversation, NPC, Spawn, "Oh, we're tied to Neriak all right. When Neriak was unearthed the first order the Queen gave to the Dread Guard was to claim all of Darklight. The Thexians had built Hate's Envy in their search for Neriak. We were quite thankful. Sselnyl was given control of the outpost's politics. We work closely with the Dread Guard and the Indigo Brotherhood, and our mining operation provides much needed ore to Neriak.")
end

function dlg_16_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex_intro003.mp3", "", "", 2490454779, 577178082, Spawn)
		AddConversationOption(conversation, "Interesting. Thank you.", "dlg_16_6")
	StartConversation(conversation, NPC, Spawn, "That's correct. When Lucan and the Thexians barged into Darklight and dug up K'Rais tunnel, the Thexians had already been searching for Neriak. Hate's Envy was theirs, with Neriak and Darklight connected, we quickly removed most of their numbers. They are tenacious, though. Either way, we own Hate's Envy now. Part of our pact with Freeport involves one of their ambassadors present at all times--but doesn't seem to take much interest in the day to day affairs of Hate's Envy. Sselnyl runs the show, that's the bottom line.")
end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex004.mp3", "", "", 1722207722, 3360208876, Spawn)
		AddConversationOption(conversation, "I am ready.", "dlg_17_2")
		AddConversationOption(conversation, "Actually, what is this place?")
		AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Excellent. The quicker we clean this place up the quicker we can get our miners back in that cave. Are you ready for more work?")
end

function dlg_17_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex005.mp3", "", "", 1638345675, 2308676427, Spawn)
		AddConversationOption(conversation, "I can.", "dlg_17_3")
		AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Good. In dealing with the elementals we've been getting overwhelmed by problems that used to be easily contained. The wolves around Hate's Envy are... numerous. There are enough of them to hamper our efforts to reclaim the Sablevein Tear. They're bold, and our presence no longer scares them. We'd like to change that, can you do it?")
end

function dlg_17_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex006.mp3", "", "", 1353181644, 668433489, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_17_4")
	StartConversation(conversation, NPC, Spawn, "Good to hear. Return to me once you've finished.")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex008.mp3", "", "", 1942649804, 4187915699, Spawn)
		AddConversationOption(conversation, "So what is the first step?", "dlg_19_2")
	StartConversation(conversation, NPC, Spawn, "Nice work, Chayne, but there are still several tasks ahead. We'd like to get our miners back in that cave as soon as possible, but they won't get near the cave until the elementals are taken care of. Many of the miners were in the caves when the walls birthed the elementals... they aren't eager to return.")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex009.mp3", "", "", 3762973180, 2568156542, Spawn)
		AddConversationOption(conversation, "I am.", "dlg_19_3")
		AddConversationOption(conversation, "I am not willing.")
	StartConversation(conversation, NPC, Spawn, "To take out the pulverizers just outside the cave mouth. Are you willing?")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex010.mp3", "", "", 1616419105, 2681650739, Spawn)
		AddConversationOption(conversation, "On my way.", "dlg_19_4")
	StartConversation(conversation, NPC, Spawn, "All right. Get to work, then.")
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex015.mp3", "", "", 3736047130, 3530972833, Spawn)
		AddConversationOption(conversation, "I appreciate it.", "dlg_21_2")
		AddConversationOption(conversation, "I found this strange plant in there.")
	StartConversation(conversation, NPC, Spawn, "Perfect. I'll let our miners know that they're going to have to start working again. I'm sure they'll be thrilled... heh. Good work,  .. GetName(Spawn) .. . You're on the right path.")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex016.mp3", "", "", 1856431729, 128783705, Spawn)
		AddConversationOption(conversation, "Thanks for the advice.", "dlg_21_3")
		AddConversationOption(conversation, "I found this strange plant in there.")
	StartConversation(conversation, NPC, Spawn, "And if you ever venture into Neriak see that you don't kill the wrong person. You don't want to end up stuck out here like me.")
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex017.mp3", "", "", 1163301017, 3037245363, Spawn)
		AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Odd. There was no flora in that cave when we were mining it. You should show this to Sselnyl Do'Zyth. You can find her in the central building in Hate's Envy.")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex018.mp3", "", "", 264191264, 3684894471, Spawn)
		AddConversationOption(conversation, "Ok.", "dlg_22_3")
	StartConversation(conversation, NPC, Spawn, "She'll know what to make of it.")
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex012.mp3", "", "", 2904769252, 751484, Spawn)
		AddConversationOption(conversation, "I am ready.", "dlg_25_2")
		AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Good, that puts the goal within our grasp. We need only to clear out the elementals within the cave now.")
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex012.mp3", "", "", 2904769252, 751484, Spawn)
		AddConversationOption(conversation, "I am ready.", "dlg_26_2")
		AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Good, that puts the goal within our grasp. We need only to clear out the elementals within the cave now.")
end

function dlg_26_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex013.mp3", "", "", 3010718218, 2537871754, Spawn)
		AddConversationOption(conversation, "I will return.", "dlg_26_3")
	StartConversation(conversation, NPC, Spawn, "I thought so.")
end

function dlg_40_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex017.mp3", "", "", 1163301017, 3037245363, Spawn)
		AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Odd. There was no flora in that cave when we were mining it. You should show this to Sselnyl Do'Zyth. You can find her in the central building in Hate's Envy.")
end

function dlg_40_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex018.mp3", "", "", 264191264, 3684894471, Spawn)
		AddConversationOption(conversation, "Ok.", "dlg_40_3")
	StartConversation(conversation, NPC, Spawn, "She'll know what to make of it.")
end

function dlg_41_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex015.mp3", "", "", 3736047130, 3530972833, Spawn)
		AddConversationOption(conversation, "I appreciate it.", "dlg_41_2")
	StartConversation(conversation, NPC, Spawn, "Perfect. I'll let our miners know that they're going to have to start working again. I'm sure they'll be thrilled... heh. Good work, Chayne. You're on the right path.")
end

function dlg_41_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex016.mp3", "", "", 1856431729, 128783705, Spawn)
		AddConversationOption(conversation, "Thanks for the advice.", "dlg_41_3")
	StartConversation(conversation, NPC, Spawn, "And if you ever venture into Neriak see that you don't kill the wrong person. You don't want to end up stuck out here like me.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "You there, come here at once! We haven't a second to spare!", "beckon", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "", "", 1689589577, 4560189, Spawn)
--]]

