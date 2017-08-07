--[[
	Script Name	: SpawnScripts/Darklight/IlmtarDViervs.lua
	Script Purpose	: Ilmtar D'Viervs 
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 90
QUEST_2 = 91
QUEST_3 = 92
QUEST_4 = 93
QUEST_5 = 94
QUEST_6 = 95
QUEST_7 = 96

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
	ProvidesQuest(NPC, QUEST_5)
	ProvidesQuest(NPC, QUEST_6)
	--ProvidesQuest(NPC, QUEST_7)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					if HasCompletedQuest(Spawn, QUEST_5) then
						if HasCompletedQuest(Spawn, QUEST_6) then
							if HasCompletedQuest(Spawn, QUEST_7) then
							elseif HasQuest(Spawn, QUEST_7) then
							else
								DidYouCollectsSacsScales(NPC, Spawn, conversation)
							end
						elseif HasQuest(Spawn, QUEST_6) then
							DidYouCollectsSacsScales(NPC, Spawn, conversation)
						else
							DidYouCollectScales(NPC, Spawn, conversation)
						end
					elseif HasQuest(Spawn, QUEST_5) then
						DidYouCollectScales(NPC, Spawn, conversation)
					else
						DidYouCollectBatTeeth(NPC, Spawn, conversation)
					end
				elseif HasQuest(Spawn, QUEST_4) then
					DidYouCollectBatTeeth(NPC, Spawn, conversation)
				else
					DidYouGatherWood(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				DidYouGatherWood(NPC, Spawn, conversation)
			else
				HaveYouTheRelics(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			HaveYouTheRelics(NPC, Spawn, conversation)
		else
			DoYouHaveTheBoneFragments(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		DoYouHaveTheBoneFragments(NPC, Spawn, conversation)
	else
		Greetings(NPC, Spawn, conversation)
	end

		
		--[[
		
	if convo==4 then

	end

	if convo==6 then

	end

	if convo==7 then

	end

	if convo==9 then

	end

	if convo==11 then

	end

	if convo==13 then

	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar028.mp3", "", "", 2680260281, 2452320817, Spawn)
		AddConversationOption(conversation, "Not yet.", "dlg_14_1")
		StartConversation(conversation, NPC, Spawn, "Did you get her skin?")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar025.mp3", "", "", 2809508619, 3088496632, Spawn)
		AddConversationOption(conversation, "Yes, I did.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Did you collect the sacs and scales?")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar000.mp3", "", "", 1310346415, 862351016, Spawn)
		AddConversationOption(conversation, "Others like myself.", "dlg_16_1")
		StartConversation(conversation, NPC, Spawn, "Greetings. I'm Ilmtar D'Viervs. I'm a merchant, like Calnozz here. We're sort of like partners, at least we are when venturing out into the Darklight Woods. Back in Neriak we don't cross paths much. While Calnozz deals with the dietary desires of the Neriak elite, I cater more to the general populace. I wouldn't call myself a general goods vendor, but I would say I'm a general goods supplier. And, so, here I am in the Darklight Wood, collecting general goods, or paying others to do the collecting for me.")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar004.mp3", "", "", 414843796, 3276254923, Spawn)
		AddConversationOption(conversation, "Yes, here you are.", "dlg_19_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the bone fragments?")
	end

	if convo==20 then
		PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar008.mp3", "", "", 703064577, 1644104756, Spawn)
		AddConversationOption(conversation, "Yes, I do.", "dlg_20_1")
		StartConversation(conversation, NPC, Spawn, "Have you the relics?")
	end--]]

end

-------------------------------------------------------------------------------------------------
--						QUEST 1
-------------------------------------------------------------------------------------------------

function Greetings(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar000.mp3", "", "", 1310346415, 862351016, Spawn)
	AddConversationOption(conversation, "Others like myself.", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "Greetings. I'm Ilmtar D'Viervs. I'm a merchant, like Calnozz here. We're sort of like partners, at least we are when venturing out into the Darklight Woods. Back in Neriak we don't cross paths much. While Calnozz deals with the dietary desires of the Neriak elite, I cater more to the general populace. I wouldn't call myself a general goods vendor, but I would say I'm a general goods supplier. And, so, here I am in the Darklight Wood, collecting general goods, or paying others to do the collecting for me.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar001.mp3", "", "", 3360424401, 1231509103, Spawn)
	AddConversationOption(conversation, "Sure.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Precisely. Would you happen to be looking for work?")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar002.mp3", "", "", 1796583901, 313965990, Spawn)
	AddConversationOption(conversation, "I'll collect the bone chips.", "OfferQuest1")
	AddConversationOption(conversation, "Find someone else to do your work.")
	StartConversation(conversation, NPC, Spawn, "I thought so. Currently I'm collecting bone fragments. Why you may ask am I collecting bone fragments? Because they sell. The necromancers and alchemists inside Neriak buy them up as quickly as they can, so I make it a point to gather as many as I can each time I'm out here. This field we're in is home to a great number of undead, with fresh numbers rising daily. They're a perfect source for the bone fragments I'm after. So, if you're still willing to help...")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function DoYouHaveTheBoneFragments(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar004.mp3", "", "", 414843796, 3276254923, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes, here you are.", "dlg_6_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Do you have the bone fragments?")
end

function dlg_6_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar005.mp3", "", "", 2453673987, 3063387300, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_6_2")
	StartConversation(conversation, NPC, Spawn, "Well done, well done. The whisperers were right about you. There's more collecting to be done. Are you in?")
end

-----------------------------------------------------------------------------------------
--						QUEST 2
-----------------------------------------------------------------------------------------

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar006.mp3", "", "", 1918530826, 2900710545, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest2")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "In the same field that these bones came from you'll find a great many items that once belonged to the soldiers who fought here, relics from the past, large and small. Though many are worthless, when you attach a story to something that's obviously been dug from the earth, people become interested. I would like you to collect these relics for me.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function HaveYouTheRelics(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar008.mp3", "", "", 703064577, 1644104756, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_2) and not HasCompletedQuest(Spawn, QUEST_3)) or (HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2) then
		AddConversationOption(conversation, "Yes, I do.", "dlg_7_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you the relics?")
end

function dlg_7_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar009.mp3", "", "", 325237481, 3771120719, Spawn)
	AddConversationOption(conversation, "Certainly.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Again, I am impressed. You may or may not be surprised to know how hard it is to find good workers around here. I was about to start offering Calnozz here some money to go do the work. Let's see. Bone fragments, weapons, ah, wood. Care for another job?")
end

-----------------------------------------------------------------------------------------------
--				QUEST 3
-----------------------------------------------------------------------------------------------

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar010.mp3", "", "", 3506682761, 2294198388, Spawn)
	AddConversationOption(conversation, "I can do that.", "OfferQuest3")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "North of here are the remnants of recent attempts to construct upon the Field of Ruin. Never mind the fools who thought it was a good idea, their building materials are worth money. Specifically I speak of the wood they've left laying around. I'd like you to retrieve it.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function DidYouGatherWood(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar012.mp3", "", "", 1035136926, 2494838590, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_3) and not HasCompletedQuest(Spawn, QUEST_4)) or (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 2) then 
		AddConversationOption(conversation, "I did. Here you go.", "YourHelpIsMostAppreciated")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you gather the wood?")
end

function YourHelpIsMostAppreciated(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) then
		SetStepComplete(Spawn, QUEST_3, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar017.mp3", "", "", 230469117, 1837417211, Spawn)
	AddConversationOption(conversation, "Not right now.", "HopingYouWouldSayThat")
	StartConversation(conversation, NPC, Spawn, "Your help is most appreciated, " .. GetName(Spawn) .. ". Most appreciated. This trip into Darklight Wood may be my shortest yet. Unless of course you wish to cease our dealings.")
end

---------------------------------------------------------------------------------------------------
--					QUEST 4
---------------------------------------------------------------------------------------------------

function HopingYouWouldSayThat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar014.mp3", "", "", 4149384252, 1540753860, Spawn)
	AddConversationOption(conversation, "Sounds good to me.", "OfferQuest4")
	AddConversationOption(conversation, "Bat teeth? I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "I was hoping you'd say that. Fools in Neriak enjoy buying things that serve no practical purpose whatsoever. Something especially shiny or brightly-colored tends to attract their attention, and thus they buy it to attract the attention of their friends. One such item is the mundane jewelry commonly seen among the Teir'Dal elite. One hot item currently is necklaces of strung bat teeth. Huh. Foolish, I know. West of here, though, you'll find bats. Bring their teeth to me and I'll share with you a portion of the profits they'll make me in Neriak.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function DidYouCollectBatTeeth(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar016.mp3", "", "", 2463327, 4115536690, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_4) and not HasCompletedQuest(Spawn, QUEST_5)) or (HasQuest(Spawn, QUEST_4) and GetQuestStep(Spawn, QUEST_4) == 2) then
		AddConversationOption(conversation, "I did.", "dlg_9_1")
	else
		AddConversationOption(conversation, "I haven't yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you collect the bat teeth?")
end

function dlg_9_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_4) then
		SetStepComplete(Spawn, QUEST_4, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar017.mp3", "", "", 230469117, 1837417211, Spawn)
	AddConversationOption(conversation, "I can get some snake scales.", "OfferQuest5")
	AddConversationOption(conversation, "This doesn't interest me.")
	StartConversation(conversation, NPC, Spawn, "Ah, of course you did. You're quite the achiever. We'll make a killing off the easily impressed fools. But why stop there? If you travel farther west you'll find the Searing Tendril River. Along its banks you'll find serpents. Their scales can do wonders, expensive things to a gown or a pair of shoes.")
end

--------------------------------------------------------------------------------------------------------
--					QUEST 5
--------------------------------------------------------------------------------------------------------

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_5)
end

function DidYouCollectScales(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar019.mp3", "", "", 1568404018, 3172549638, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_5) and not HasCompletedQuest(Spawn, QUEST_6)) or (HasQuest(Spawn, QUEST_5) and GetQuestStep(Spawn, QUEST_5) == 2) then
		AddConversationOption(conversation, "I did, here you go.", "dlg_11_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you collect the scales?")
end

function dlg_11_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_5) then
		SetStepComplete(Spawn, QUEST_5, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar020.mp3", "", "", 1922037793, 2053231515, Spawn)
	AddConversationOption(conversation, "Which scales are the correct ones?", "dlg_11_2")
	StartConversation(conversation, NPC, Spawn, "Hmm. You did, but I realize now I made a mistake. These are not the decorative scales of which I'd been thinking. Though they will still sell, so there is little in the way of worry concerning that. However, I would still like to get the correct scales for the clothiers I normally deal with.")
end

---------------------------------------------------------------------------------------------------------------
--						QUEST 6
---------------------------------------------------------------------------------------------------------------

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar021.mp3", "", "", 4093533451, 1979227587, Spawn)
	AddConversationOption(conversation, "Yes?", "dlg_11_3")
	StartConversation(conversation, NPC, Spawn, "Those of the flying snakes, the scar wurms. They glide about in Innoruuk's Scar just east of here. Theirs are the scales that I speak of, though they can be tricky to capture. You'll have to hit them with something to catch their attention. Once that happens, though, they're quite aggressive--it's mating season. Hmm... perhaps...")
end

function dlg_11_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar022.mp3", "", "", 4147961055, 2421932386, Spawn)
	AddConversationOption(conversation, "Of course.", "dlg_11_4")
	StartConversation(conversation, NPC, Spawn, "The male scar wurms carry a distinct scent they use to attract mates. Er, well, a mate. The wurm mother rules over this brood. If we could scale her, though... How would you like to make a whole lot of money, " .. GetName(Spawn) .. "?")
end

function dlg_11_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar023.mp3", "", "", 2773751733, 4294011678, Spawn)
	AddConversationOption(conversation, "I can do that.", "OfferQuest6")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "All right. Bring me the scales from the scar wurms, those will still sell. But, while you're doing that, also collect the pheromone sacs of the males. With these sacs we can lure the wurm mother out and get that beautiful skin of hers.")
end

function OfferQuest6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_6)
end

function DidYouCollectsSacsScales(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar025.mp3", "", "", 2809508619, 3088496632, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_6) and not HasCompletedQuest(Spawn, QUEST_7)) or (HasQuest(Spawn, QUEST_6) and GetQuestStep(Spawn, QUEST_6) == 3) then
		AddConversationOption(conversation, "Yes, I did.", "dlg_13_2")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you collect the sacs and scales?")
end

function dlg_13_2(NPC, Spawn)
	if HasQuest(Spawn, QUEST_6) then
		SetStepComplete(Spawn, QUEST_6, 3)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar026.mp3", "", "", 3405473502, 2880316414, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest7")
	AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Excellent. I've made this small device that will use the sacs to disperse the pheromone over a small area in a concentrated amount. This should call forth the wurm mother. Go back to Innoruuk's Scar and use it on the bridge. Once the wurm mother comes forth to spawn... kill her.")
end

------------------------------------------------------------------------------------------
--				QUEST 7
------------------------------------------------------------------------------------------

function OfferQuest7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	--OfferQuest(NPC, Spawn, QUEST_7)
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar027.mp3", "", "", 1499603257, 590940324, Spawn)
	AddConversationOption(conversation, "That's reassuring.", "dlg_13_4")
	StartConversation(conversation, NPC, Spawn, "Her skin will be worth a great deal more than the skins of these smaller wurms.")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar026.mp3", "", "", 3405473502, 2880316414, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_15_2")
	AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Excellent. I've made this small device that will use the sacs to disperse the pheromone over a small area in a concentrated amount. This should call forth the wurm mother. Go back to Innoruuk's Scar and use it on the bridge. Once the wurm mother comes forth to spawn... kill her.")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar027.mp3", "", "", 1499603257, 590940324, Spawn)
	AddConversationOption(conversation, "That's reassuring.", "dlg_15_3")
	StartConversation(conversation, NPC, Spawn, "Her skin will be worth a great deal more than the skins of these smaller wurms.")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar001.mp3", "", "", 3360424401, 1231509103, Spawn)
	AddConversationOption(conversation, "Sure.", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "Precisely. Would you happen to be looking for work?")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar002.mp3", "", "", 1796583901, 313965990, Spawn)
	AddConversationOption(conversation, "I'll collect the bone chips.", "dlg_16_3")
	AddConversationOption(conversation, "Find someone else to do your work.")
	StartConversation(conversation, NPC, Spawn, "I thought so. Currently I'm collecting bone fragments. Why you may ask am I collecting bone fragments? Because they sell. The necromancers and alchemists inside Neriak buy them up as quickly as they can, so I make it a point to gather as many as I can each time I'm out here. This field we're in is home to a great number of undead, with fresh numbers rising daily. They're a perfect source for the bone fragments I'm after. So, if you're still willing to help...")
end

function dlg_16_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar003.mp3", "", "", 2929478773, 1922139925, Spawn)
	AddConversationOption(conversation, "I'll be back.", "dlg_16_4")
	StartConversation(conversation, NPC, Spawn, "Then I await your return.")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar005.mp3", "", "", 2453673987, 3063387300, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_19_2")
	StartConversation(conversation, NPC, Spawn, "Well done, well done. The whisperers were right about you. There's more collecting to be done. Are you in?")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar006.mp3", "", "", 1918530826, 2900710545, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_19_3")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "In the same field that these bones came from you'll find a great many items that once belonged to the soldiers who fought here, relics from the past, large and small. Though many are worthless, when you attach a story to something that's obviously been dug from the earth, people become interested. I would like you to collect these relics for me.")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar007.mp3", "", "", 1159271523, 3598851329, Spawn)
	AddConversationOption(conversation, "We'll see what I dig up.", "dlg_19_4")
	StartConversation(conversation, NPC, Spawn, "A ring is a ring is a ring, but the ring of a king... now that's something someone will pay for.")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar009.mp3", "", "", 325237481, 3771120719, Spawn)
	AddConversationOption(conversation, "Certainly.", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "Again, I am impressed. You may or may not be surprised to know how hard it is to find good workers around here. I was about to start offering Calnozz here some money to go do the work. Let's see. Bone fragments, weapons, ah, wood. Care for another job?")
end

function dlg_20_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar010.mp3", "", "", 3506682761, 2294198388, Spawn)
	AddConversationOption(conversation, "I can do that.", "dlg_20_3")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "North of here are the remnants of recent attempts to construct upon the Field of Ruin. Never mind the fools who thought it was a good idea, their building materials are worth money. Specifically I speak of the wood they've left laying around. I'd like you to retrieve it.")
end

function dlg_20_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar011.mp3", "", "", 2167619330, 3237098781, Spawn)
	AddConversationOption(conversation, "I'll return.", "dlg_20_4")
	StartConversation(conversation, NPC, Spawn, "Good.")
end