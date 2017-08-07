--[[
	Script Name	: SpawnScripts/Darklight/CalnozzJMelvirr.lua
	Script Purpose	: Calnozz J'Melvirr 
	Script Author	: John Adams
	Script Date	: 2009.01.31
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

		PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz000.mp3", "", "", 2454912435, 3850193345, Spawn)
	AddConversationOption(conversation, "You heard the guards speaking of me?", "dlg_4_1")
	AddConversationOption(conversation, "I am good.")
	StartConversation(conversation, NPC, Spawn, "XXXXXXX? I've heard the guards speaking of you. How do you do?")
	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz019.mp3", "", "", 761414831, 1188946204, Spawn)
		AddConversationOption(conversation, "Yes I have them here.", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "Did you collect them?")
	end

	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz000.mp3", "", "", 2454912435, 3850193345, Spawn)
		AddConversationOption(conversation, "You heard the guards speaking of me?", "dlg_13_1")
		AddConversationOption(conversation, "I am good.")
		StartConversation(conversation, NPC, Spawn, "Zuzoo? I've heard the guards speaking of you. How do you do?")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz008_tv.mp3", "", "", 2397265505, 673488947, Spawn)
		AddConversationOption(conversation, "I have a bear cub.", "dlg_14_1")
		AddConversationOption(conversation, "All right.")
		StartConversation(conversation, NPC, Spawn, "Bring me the cubs and then we'll talk about payment.")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz014.mp3", "", "", 2660701588, 4112348177, Spawn)
		AddConversationOption(conversation, "Yeah, I collected it.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Did you collect it?")
	end

	if convo==25 then
		PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz008_tv.mp3", "", "", 2397265505, 673488947, Spawn)
		AddConversationOption(conversation, "I have a bear cub.", "dlg_25_1")
		AddConversationOption(conversation, "All right.")
		StartConversation(conversation, NPC, Spawn, "Bring me the cubs and then we'll talk about payment.")
	end

	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz008_tv.mp3", "", "", 2397265505, 673488947, Spawn)
		AddConversationOption(conversation, "I have a bear cub.", "dlg_26_1")
		AddConversationOption(conversation, "All right.")
		StartConversation(conversation, NPC, Spawn, "Bring me the cubs and then we'll talk about payment.")
	end

	if convo==27 then
		PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz008_tv.mp3", "", "", 2397265505, 673488947, Spawn)
		AddConversationOption(conversation, "I have a bear cub.", "dlg_27_1")
		AddConversationOption(conversation, "All right.")
		StartConversation(conversation, NPC, Spawn, "Bring me the cubs and then we'll talk about payment.")
	end

	if convo==29 then
		PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz014.mp3", "", "", 2660701588, 4112348177, Spawn)
		AddConversationOption(conversation, "Yeah, I collected it.", "dlg_29_1")
		StartConversation(conversation, NPC, Spawn, "Did you collect it?")
	end

end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz001.mp3", "", "", 1345648558, 587665125, Spawn)
	AddConversationOption(conversation, "Well, nice to meet you.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Indeed I did, though that is of little importance. I am Calnozz J'Melvirr.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz003.mp3", "", "", 1237619057, 3188401533, Spawn)
	AddConversationOption(conversation, "What did you have in mind?", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "No doubt. You may not have heard of me, but I am one of the top suppliers to most of the higher class restaurants in Neriak. I've worked in the field for quite some time. I've even discovered a number of new ingredients for the restaurants to use. In my spare time, I cook, naturally. For now, though, I am out here. Collecting. Tell me, .. GetName(Spawn) .. . would a short term business partnership interest you?")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz004.mp3", "", "", 1724396442, 329779287, Spawn)
	AddConversationOption(conversation, "I'm listening.", "dlg_4_4")
	StartConversation(conversation, NPC, Spawn, "You get things done, and I have things that need doing. I will pay you for your work.")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz005.mp3", "", "", 833398241, 239346045, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_4_5")
	StartConversation(conversation, NPC, Spawn, "Good to hear. One delicacy I helped introduce to Neriak is called gerael. What it is, is the meat from bear cubs, which everyone knows. What most laymen don't know--and most collectors fail to capitalize on--is the activity level of the cubs from which the meat is derived.")
end

function dlg_4_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz006.mp3", "", "", 37698119, 695494273, Spawn)
	AddConversationOption(conversation, "All right, I can do this.", "dlg_4_6")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "I keep my cubs chained up to limit their movement. This retards the growth of tough muscle fiber and makes the flesh nice and tender. It is because of this that restaurants pay a premium for my meat. What I'd like from you, is to go find some cubs and bring them back to me.")
end

function dlg_4_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz007.mp3", "", "", 1447659069, 1085130442, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_4_7")
	StartConversation(conversation, NPC, Spawn, "Excellent. I will be here waiting for you to bring the cubs back. Here is the leash.")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz020.mp3", "", "", 3550554639, 273920671, Spawn)
	AddConversationOption(conversation, "Thank you.", "dlg_12_2")
	StartConversation(conversation, NPC, Spawn, "Nice work, .. GetName(Spawn) .. . Nice work indeed. These will do nicely. Here is your payment.")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz021.mp3", "", "", 1698965568, 399908880, Spawn)
	AddConversationOption(conversation, "Oh?", "dlg_12_3")
	AddConversationOption(conversation, "Oh, I am quite aware of that. But your concern is appreciated.")
	StartConversation(conversation, NPC, Spawn, "You seem to play the game well, assuming your attitude is a mask. If it is not, make it one. Do not be sincere within Neriak, .. GetName(Spawn) .. . That is a mistake you will not be allowed to repeat.")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz022.mp3", "", "", 1513724159, 2767202576, Spawn)
	AddConversationOption(conversation, "Funny for YOU to say that to me.", "dlg_12_4")
	StartConversation(conversation, NPC, Spawn, "Put on the mask, be friendly, that is what they expect and how they interact with each other. But trust no one, and use everyone you can, lest you be used yourself.")
end

function dlg_12_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz023.mp3", "", "", 2872411134, 1698258241, Spawn)
	AddConversationOption(conversation, "I see. Well, thank you for the advice. Do you have any more work?", "dlg_12_5")
	StartConversation(conversation, NPC, Spawn, "Fair enough, you may break off our dealings at any time. Though it is more acceptable to avoid the political mess that is Neriak once you leave the city itself.")
end

function dlg_12_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz025.mp3", "", "", 3007549595, 1246810731, Spawn)
	AddConversationOption(conversation, "I'm sure I can figure it out.", "dlg_12_6")
	AddConversationOption(conversation, "Not really, but I'll try.")
	AddConversationOption(conversation, "Know how to fish? I'm a fishing prodigy!")
	AddConversationOption(conversation, "Fishing? Goodbye.")
	StartConversation(conversation, NPC, Spawn, "In fact I do. I have a client who is requesting Smoldering trout. They are the resilient fish that swim about in Smoldering Lake, which is found to the northwest. I hope you know how to fish.")
end

function dlg_12_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz026.mp3", "", "", 466576522, 3228815072, Spawn)
	AddConversationOption(conversation, "I'll return with them.")
	StartConversation(conversation, NPC, Spawn, "Well, so long as I get the fish!")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz001.mp3", "", "", 1345648558, 587665125, Spawn)
	AddConversationOption(conversation, "Well, nice to meet you.", "dlg_13_2")
	StartConversation(conversation, NPC, Spawn, "Indeed I did, though that is of little importance. I am Calnozz J'Melvirr.")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz003.mp3", "", "", 1237619057, 3188401533, Spawn)
	AddConversationOption(conversation, "What did you have in mind?", "dlg_13_3")
	StartConversation(conversation, NPC, Spawn, "No doubt. You may not have heard of me, but I am one of the top suppliers to most of the higher class restaurants in Neriak. I've worked in the field for quite some time. I've even discovered a number of new ingredients for the restaurants to use. In my spare time, I cook, naturally. For now, though, I am out here. Collecting. Tell me, Zuzoo, would a short term business partnership interest you?")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz004.mp3", "", "", 1724396442, 329779287, Spawn)
	AddConversationOption(conversation, "I'm listening.", "dlg_13_4")
	StartConversation(conversation, NPC, Spawn, "You get things done, and I have things that need doing. I will pay you for your work.")
end

function dlg_13_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz005.mp3", "", "", 833398241, 239346045, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_13_5")
	StartConversation(conversation, NPC, Spawn, "Good to hear. One delicacy I helped introduce to Neriak is called gerael. What it is, is the meat from bear cubs, which everyone knows. What most laymen don't know--and most collectors fail to capitalize on--is the activity level of the cubs from which the meat is derived.")
end

function dlg_13_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz006.mp3", "", "", 37698119, 695494273, Spawn)
	AddConversationOption(conversation, "All right, I can do this.", "dlg_13_6")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "I keep my cubs chained up to limit their movement. This retards the growth of tough muscle fiber and makes the flesh nice and tender. It is because of this that restaurants pay a premium for my meat. What I'd like from you, is to go find some cubs and bring them back to me.")
end

function dlg_13_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz007.mp3", "", "", 1447659069, 1085130442, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_13_7")
	StartConversation(conversation, NPC, Spawn, "Excellent. I will be here waiting for you to bring the cubs back. Here is the leash.")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz009.mp3", "", "", 1819294557, 1460011625, Spawn)
	AddConversationOption(conversation, "That's three cubs.", "dlg_14_2")
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Nice work!")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz010.mp3", "", "", 3144240243, 3441965982, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_14_3")
	StartConversation(conversation, NPC, Spawn, "That it is. Very nice. I do believe our partnership will work out fine. Do you wish to continue working?")
end

function dlg_14_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz011.mp3", "", "", 2621978220, 49747204, Spawn)
	AddConversationOption(conversation, "What's that?", "dlg_14_4")
	StartConversation(conversation, NPC, Spawn, "Good. I have my own garden in Neriak. Though, most often I am not the one caring for it, so really I wouldn't say the garden is MINE so much. But I do own it. One thing that helps my fruits and vegetables ripen is the right fertilizer. Most folks tend to use land mammal dung as fertilizer, but in my wanderings out here I've stumbled onto a little secret.")
end

function dlg_14_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz012.mp3", "", "", 514050601, 1202589149, Spawn)
	AddConversationOption(conversation, "All right, I'll collect some.", "dlg_14_5")
	AddConversationOption(conversation, "Not a chance, Calnozz.")
	StartConversation(conversation, NPC, Spawn, "Screecher dung. You would be amazed at how well this stuff helps plants grow. The screechers are just west of T'Vatar Post, and their droppings can be found all around that area.")
end

function dlg_14_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz013.mp3", "", "", 2963845770, 48104833, Spawn)
	AddConversationOption(conversation, "Yeah, yeah. I'll be back.", "dlg_14_6")
	StartConversation(conversation, NPC, Spawn, "It's a dirty job, but someone who isn't me has to do it.")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz015.mp3", "", "", 1272266981, 2604142858, Spawn)
	AddConversationOption(conversation, "Interesting.", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "Nice work, .. GetName(Spawn) .. . It may seem worthless now, but with a little preparation this can turn a few seeds into platinum.")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz016.mp3", "", "", 636649601, 977260067, Spawn)
	AddConversationOption(conversation, "What task?", "dlg_15_3")
	StartConversation(conversation, NPC, Spawn, "Interesting in a 'money making' sort of way, yes. Whatever it takes to meet the discerning palate of the Neriak elite, I always say. On that note, I have another task for you.")
end

function dlg_15_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz017.mp3", "", "", 1678813904, 3793532984, Spawn)
	AddConversationOption(conversation, "I can collect them.", "dlg_15_4")
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "Baby snake is a delicacy in Neriak. Along the banks of the Searing Tendril you will find serpents. Some, when slain, will spew forth baby snakes--a beautiful way to come into the world, no doubt. These baby snakes are what I require.")
end

function dlg_15_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz018.mp3", "", "", 3304982869, 1880170968, Spawn)
	AddConversationOption(conversation, "I'll try to remember.", "dlg_15_5")
	StartConversation(conversation, NPC, Spawn, "They sell for quite a bit, so try not to slice up the babies too much.")
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz009.mp3", "", "", 1819294557, 1460011625, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_25_2")
	StartConversation(conversation, NPC, Spawn, "Nice work!")
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz009.mp3", "", "", 1819294557, 1460011625, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_26_2")
	StartConversation(conversation, NPC, Spawn, "Nice work!")
end

function dlg_27_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz009.mp3", "", "", 1819294557, 1460011625, Spawn)
	AddConversationOption(conversation, "That's three cubs.", "dlg_27_2")
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Nice work!")
end

function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz010.mp3", "", "", 3144240243, 3441965982, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_27_3")
	StartConversation(conversation, NPC, Spawn, "That it is. Very nice. I do believe our partnership will work out fine. Do you wish to continue working?")
end

function dlg_27_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz011.mp3", "", "", 2621978220, 49747204, Spawn)
	AddConversationOption(conversation, "What's that?", "dlg_27_4")
	StartConversation(conversation, NPC, Spawn, "Good. I have my own garden in Neriak. Though, most often I am not the one caring for it, so really I wouldn't say the garden is MINE so much. But I do own it. One thing that helps my fruits and vegetables ripen is the right fertilizer. Most folks tend to use land mammal dung as fertilizer, but in my wanderings out here I've stumbled onto a little secret.")
end

function dlg_27_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz012.mp3", "", "", 514050601, 1202589149, Spawn)
	AddConversationOption(conversation, "All right, I'll collect some.", "dlg_27_5")
	AddConversationOption(conversation, "Not a chance, Calnozz.")
	StartConversation(conversation, NPC, Spawn, "Screecher dung. You would be amazed at how well this stuff helps plants grow. The screechers are just west of T'Vatar Post, and their droppings can be found all around that area.")
end

function dlg_27_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz013.mp3", "", "", 2963845770, 48104833, Spawn)
	AddConversationOption(conversation, "Yeah, yeah. I'll be back.", "dlg_27_6")
	StartConversation(conversation, NPC, Spawn, "It's a dirty job, but someone who isn't me has to do it.")
end

function dlg_29_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz015.mp3", "", "", 1272266981, 2604142858, Spawn)
	AddConversationOption(conversation, "Interesting.", "dlg_29_2")
	StartConversation(conversation, NPC, Spawn, "Nice work, Zuzoo. It may seem worthless now, but with a little preparation this can turn a few seeds into platinum.")
end

function dlg_29_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz016.mp3", "", "", 636649601, 977260067, Spawn)
	AddConversationOption(conversation, "What task?", "dlg_29_3")
	StartConversation(conversation, NPC, Spawn, "Interesting in a 'money making' sort of way, yes. Whatever it takes to meet the discerning palate of the Neriak elite, I always say. On that note, I have another task for you.")
end

function dlg_29_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz017.mp3", "", "", 1678813904, 3793532984, Spawn)
	AddConversationOption(conversation, "I can collect them.", "dlg_29_4")
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "Baby snake is a delicacy in Neriak. Along the banks of the Searing Tendril you will find serpents. Some, when slain, will spew forth baby snakes--a beautiful way to come into the world, no doubt. These baby snakes are what I require.")
end

function dlg_29_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/calnozz_j_melvirr/darklight_wood/tvatar_post/calnozz/calnozz018.mp3", "", "", 3304982869, 1880170968, Spawn)
	AddConversationOption(conversation, "I'll try to remember.", "dlg_29_5")
	StartConversation(conversation, NPC, Spawn, "They sell for quite a bit, so try not to slice up the babies too much.")
end

