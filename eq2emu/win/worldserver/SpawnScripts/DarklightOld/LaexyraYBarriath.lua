--[[
	Script Name	: SpawnScripts/Darklight/LaexyraYBarriath.lua
	Script Purpose	: Laexyra Y'Barriath 
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 97
QUEST_2 = 98
QUEST_3 = 99
QUEST_4 = 100

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
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
				elseif HasQuest(Spawn, QUEST_4) then
					DidYouTrapSprits(NPC, Spawn, conversation)
				else
					DidYouSpeakWithHim(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				DidYouSpeakWithHim(NPC, Spawn, conversation)
			else
				TakenCareOfUndead(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			TakenCareOfUndead(NPC, Spawn, conversation)
		else
			HaveYouCollectedTrinkets(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		HaveYouCollectedTrinkets(NPC, Spawn, conversation)
	else
		YourNameAsBeenMentioned(NPC, Spawn, conversation)
	end

		--[[

	if convo==2 then

	end

	if convo==3 then

	end

	if convo==5 then

	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra025.mp3", "", "", 2968178796, 2144270462, Spawn)
		AddConversationOption(conversation, "I have.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Have you released the spirits yet?")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra100.mp3", "", "", 3978800646, 472667343, Spawn)
		AddConversationOption(conversation, "Is there anything I can help with?", "dlg_7_1")
		AddConversationOption(conversation, "I hope I have been helpful enough that your words of me to others are positive.")
		AddConversationOption(conversation, "Good luck with that.")
		StartConversation(conversation, NPC, Spawn, "Now my only question is what problem to tackle next.")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra100.mp3", "", "", 3978800646, 472667343, Spawn)
		AddConversationOption(conversation, "I hope I have been helpful enough that your words of me to others are positive.", "dlg_8_1")
		AddConversationOption(conversation, "Good luck with that.")
		StartConversation(conversation, NPC, Spawn, "Now my only question is what problem to tackle next.")
	end

	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra000.mp3", "", "", 3671121604, 886211339, Spawn)
		AddConversationOption(conversation, "Yes. I am Zuzoo.", "dlg_17_1")
		StartConversation(conversation, NPC, Spawn, "Zuzoo? Your name has been mentioned to me.")
	end

	if convo==18 then

	end--]]

end

-----------------------------------------------------------------------------------------------------------------------
--							QUEST 1
-----------------------------------------------------------------------------------------------------------------------

function YourNameAsBeenMentioned(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra000.mp3", "", "", 3671121604, 886211339, Spawn)
	AddConversationOption(conversation, "Yes. I am " .. GetName(Spawn) .. ".", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, GetName(Spawn) .. "? Your name has been mentioned to me.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra001.mp3", "", "", 1197897281, 4249033870, Spawn)
	AddConversationOption(conversation, "I am interested. And the coin doesn't hurt.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "I am Laexyra Y'Barriath, current Commander of the Dread Guard forces in the Darklight Wood. Tell me, are you interested in working for the citizens of Neriak? Is that why you are here?")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra002.mp3", "", "", 2462999201, 3809635655, Spawn)
	AddConversationOption(conversation, "What does it need?", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "That is good to hear. Coin motivated. But Neriak needs more than greed to drive it forward--especially now.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra003.mp3", "", "", 3944742883, 4197311371, Spawn)
	AddConversationOption(conversation, "Why do you say that?", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "It needs believers. True statesmen and women who will do all they can to further their city. In my case, I am here in Darklight working hard to do as the Queen wishes--take this land back from the forces--natural or otherwise--that seem to believe it their own. It may sound vast and noble, but it is a humble job that I do.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra004.mp3", "", "", 2740037178, 1407592183, Spawn)
	AddConversationOption(conversation, "How will you do that?", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "I am basically working to rid these lands of all its annoyances. We've the countless undead crawling from the earth here, the foolish Thexians that inch closer by the day, vampires in the hills planning who knows what, and all of that on top of the natural dangers of this land. I am working hard to coordinate it all, but the problem is so vast it will take quite some time before I can start seeing results. For now, though, I am looking for a means to remove the undead from this place entirely.")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra005.mp3", "", "", 2242220429, 2833193827, Spawn)
	AddConversationOption(conversation, "What is the plan?", "dlg_2_6")
	StartConversation(conversation, NPC, Spawn, "Aside from the fact that new corpses climb from the ground every day, those that we kill do not stay dead for long. I believe, with a little work, we can at least keep those we kill from coming back. But nothing is certain.")
end

function dlg_2_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra006.mp3", "", "", 1387820344, 2294616380, Spawn)
	AddConversationOption(conversation, "I can do that.", "OfferQuest1")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "For now I'd like you to search the field to our south. The halflings and elf rangers brought many things into our forest, including small tokens meant to remind them of home--to remind them of what they were dying for. I'd like you to collect some of these for me.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function HaveYouCollectedTrinkets(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra008.mp3", "", "", 1401482459, 420009619, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes.", "dlg_18_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you collected the trinkets?")
end

function dlg_18_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra009.mp3", "", "", 230185765, 225148151, Spawn)
	AddConversationOption(conversation, "I am willing.", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "Excellent. It will take me some time to prepare them for their purpose, however. In the mean time, the undead must be culled. Oh, they'll just rise up again, but sometimes a temporary solution is necessary when a permanent one cannot be manufactured. Are you willing?")
end

-----------------------------------------------------------------------------------------------------------------------
--							QUEST 2
-----------------------------------------------------------------------------------------------------------------------

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra010.mp3", "", "", 1241500417, 3243560918, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest2")
	AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Good. North of here are the undead remains of our soldiers, Teir'Dal. It is unfortunately necessary to abuse their bodies in this manner until we can come up with a true solution. Kill the defenders and soldiers so that we may have some respite.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function TakenCareOfUndead(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra012.mp3", "", "", 2414153072, 497045036, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_2) and not HasCompletedQuest(Spawn, QUEST_3)) or (HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 3) then
		AddConversationOption(conversation, "Temporarily, yes.", "dlg_1_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you taken care of the undead?")
end

function dlg_1_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 3)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra013.mp3", "", "", 2967713503, 3693511538, Spawn)
	AddConversationOption(conversation, "Ok.", "OfferQuest3")
	AddConversationOption(conversation, "Maybe someone else would be more interested in doing this for you.")
	StartConversation(conversation, NPC, Spawn, "There is another. Harnen Taptha, a human businessman, who thought he could build in the Field of Ruin. Though his men oft fell to the undead, he hired more, a firm believer that once the undead were all gone he would complete his project and it would pay for itself. But he died. In the end he only created more annoyances. His shade still roams the ruins. I warned him not to attempt the project, but he didn't listen. Every so often I like to remind him of that. Go remind him for me, would you?")
end

-----------------------------------------------------------------------------------------------------------------------
--							QUEST 3
-----------------------------------------------------------------------------------------------------------------------

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function DidYouSpeakWithHim(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra_015.mp3", "", "", 449799862, 1072301053, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_3) and not HasCompletedQuest(Spawn, QUEST_4)) or (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 3) then
		AddConversationOption(conversation, "He attacked me.", "dlg_3_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you speak with him?")
end

function dlg_3_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) then
		SetStepComplete(Spawn, QUEST_3, 3)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra_016alt.mp3", "", "", 2788809363, 3909916673, Spawn)
	AddConversationOption(conversation, "I killed him.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Hah. That sounds like him all right.")
end

-----------------------------------------------------------------------------------------------------------------------
--							QUEST 4
-----------------------------------------------------------------------------------------------------------------------

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra_017.mp3", "", "", 2824736623, 3050226046, Spawn)
	AddConversationOption(conversation, "What do you need?", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "Well, he'll be back for more shortly enough. But that's enough fun for now, back to business. I've prepared the trinkets you've collected and I'm ready to put more work into this.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra_018.mp3", "", "", 924115996, 1482058710, Spawn)
	AddConversationOption(conversation, "So I should summon and kill their spirits?", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "I'd like you to go out among the stout cadavers and fallen rangers and use my specially-prepared trinkets to capture the spirits of some of these soldiers. I believe I've managed to amplify the effect these trinkets will have on their owners--pulling the spirit together into something more tangible. By that I mean, instead of a mindless zombie it will actually BE the spirit of the fallen soldier. This means that if we get rid of this spirit, it will no longer contribute to the undead menace.")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra_019.mp3", "", "", 488716245, 877522872, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest4")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "No, they wouldn't stay dead. We can, however, trap their spirits, and that's just what I'd like you to do.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Say(NPC, "Need item inspecting to work.", Spawn)
	--OfferQuest(NPC, Spawn, QUEST_4)
end

function DidYouTrapSprits(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra021.mp3", "", "", 3742143393, 3604889298, Spawn)
	
	--if HasCompletedQuest(Spawn, QUEST_4) and not HasCompletedQuest(Spawn, QUEST_5)) or (HasQuest(Spawn, QUEST_4) and GetQuestStep(Spawn, QUEST_4) == 2) then
		--AddConversationOption(conversation, "I have.", "dlg_5_1")
	--else
		AddConversationOption(conversation, "Not yet.")
	--end
	StartConversation(conversation, NPC, Spawn, "Did you trap the spirits?")
end











function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra_022.mp3", "", "", 2793243164, 3862766171, Spawn)
	AddConversationOption(conversation, "What plan is that?", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Ah, good. I even have a plan of what may be done with them.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra_023.mp3", "", "", 1249317464, 400921850, Spawn)
	AddConversationOption(conversation, "I can put the spirits in the well.", "dlg_5_3")
	AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Well, I'm unsure if it will work. But I believe that if we release these spirits near the Wellspring of Nightmares we can trap them in perpetual torment. It's similar to their existence now, but with the added benefit that they have no corporeal connection to this world and are thus no longer annoying us.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra_024.mp3", "", "", 740917760, 1650921946, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "That works for me. Let me know how it goes.")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra009.mp3", "", "", 230185765, 225148151, Spawn)
	AddConversationOption(conversation, "I am willing.", "dlg_5_5")
	StartConversation(conversation, NPC, Spawn, "Excellent. It will take me some time to prepare them for their purpose, however. In the mean time, the undead must be culled. Oh, they'll just rise up again, but sometimes a temporary solution is necessary when a permanent one cannot be manufactured. Are you willing?")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra010.mp3", "", "", 1241500417, 3243560918, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_5_6")
	AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Good. North of here are the undead remains of our soldiers, Teir'Dal. It is unfortunately necessary to abuse their bodies in this manner until we can come up with a true solution. Kill the defenders and soldiers so that we may have some respite.")
end

function dlg_5_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra011.mp3", "", "", 370299149, 331491163, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_5_7")
	StartConversation(conversation, NPC, Spawn, "Return to me when you are finished.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra026.mp3", "", "", 3005578756, 2486978605, Spawn)
	AddConversationOption(conversation, "None. They are all trapped.", "dlg_6_2")
	StartConversation(conversation, NPC, Spawn, "And none of them escaped?")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra027.mp3", "", "", 3541798965, 2898676682, Spawn)
	AddConversationOption(conversation, "You're welcome.", "dlg_6_3")
	StartConversation(conversation, NPC, Spawn, "Mmm. Beautiful, beautiful. I believe this can be used to rid ourselves of the stout cadavers and fallen rangers. A more appropriate method of dealing with the Teir'Dal spirits will have to be found, however. But this is a very big step in the right direction. Thank you, XXXXX.")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra100.mp3", "", "", 3978800646, 472667343, Spawn)
	AddConversationOption(conversation, "Is there anything I can help with?", "dlg_6_4")
	AddConversationOption(conversation, "How did you figure out how to trap their spirits anyway?")
	AddConversationOption(conversation, "I hope I have been helpful enough that your words of me to others are positive.")
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "Now my only question is what problem to tackle next.")
end

function dlg_6_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra104.mp3", "", "", 1524964623, 3335181732, Spawn)
	AddConversationOption(conversation, "I don't mind.")
	AddConversationOption(conversation, "I would, actually.", "dlg_6_5")
	StartConversation(conversation, NPC, Spawn, "That was actually a suggestion from Madam Victra at the Wanderlust Fair. That reminds me, she wanted to know how it went. Would you mind telling her that everything went well?")
end

function dlg_6_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra105.mp3", "", "", 252448036, 2470006872, Spawn)
	AddConversationOption(conversation, "You're welcome.", "dlg_6_6")
	StartConversation(conversation, NPC, Spawn, "Thank you.")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra101.mp3", "", "", 3552928053, 835636428, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "There is, in fact. I'd like you to report to Malyl N'Vazin. You can find her and her contingent at the Wanderlust Fair. I would like you to offer Malyl the same assistance you gave me. I have no doubt that she could use you.")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra102.mp3", "", "", 3235746092, 3080261090, Spawn)
	AddConversationOption(conversation, "Ok, I will go find Malyl.", "dlg_7_3")
	AddConversationOption(conversation, "This task doesn't interest me.")
	StartConversation(conversation, NPC, Spawn, "To get to the Wanderlust Fair follow the path west. When it splits, take the right fork. You will pass over the Searing Tendril River before the path splits again, this time go left. That will lead you right past the fair on Nightshadow Rise.")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra103.mp3", "", "", 4121544696, 1193797967, Spawn)
	AddConversationOption(conversation, "You're welcome.", "dlg_7_4")
	StartConversation(conversation, NPC, Spawn, "Thank you, .. GetName(Spawn) .. . I cannot overstate how much you have done for us so far.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra100.mp3", "", "", 3978800646, 472667343, Spawn)
	AddConversationOption(conversation, "I hope I have been helpful enough that your words of me to others are positive.", "dlg_8_2")
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "Now my only question is what problem to tackle next.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra106.mp3", "", "", 3183696906, 1746275815, Spawn)
	AddConversationOption(conversation, "Who does it go to?", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "Quite. On that note, in fact, I've something I'd like you to deliver to a friend of mine within Neriak.")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra107.mp3", "", "", 3887589780, 1208777716, Spawn)
	AddConversationOption(conversation, "All right, I will deliver it.", "dlg_8_4")
	AddConversationOption(conversation, "Maybe at a later date.")
	StartConversation(conversation, NPC, Spawn, "Zezas X'Zauzin. He should be just inside Neriak.")
end

function dlg_8_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra108.mp3", "", "", 879389791, 170993145, Spawn)
	AddConversationOption(conversation, "You're welcome.", "dlg_8_5")
	StartConversation(conversation, NPC, Spawn, "Thank you.")
end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra001.mp3", "", "", 1197897281, 4249033870, Spawn)
	AddConversationOption(conversation, "I am interested. And the coin doesn't hurt.", "dlg_17_2")
	StartConversation(conversation, NPC, Spawn, "I am Laexyra Y'Barriath, current Commander of the Dread Guard forces in the Darklight Wood. Tell me, are you interested in working for the citizens of Neriak? Is that why you are here?")
end

function dlg_17_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra002.mp3", "", "", 2462999201, 3809635655, Spawn)
	AddConversationOption(conversation, "What does it need?", "dlg_17_3")
	StartConversation(conversation, NPC, Spawn, "That is good to hear. Coin motivated. But Neriak needs more than greed to drive it forward--especially now.")
end

function dlg_17_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra003.mp3", "", "", 3944742883, 4197311371, Spawn)
	AddConversationOption(conversation, "Why do you say that?", "dlg_17_4")
	StartConversation(conversation, NPC, Spawn, "It needs believers. True statesmen and women who will do all they can to further their city. In my case, I am here in Darklight working hard to do as the Queen wishes--take this land back from the forces--natural or otherwise--that seem to believe it their own. It may sound vast and noble, but it is a humble job that I do.")
end

function dlg_17_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra004.mp3", "", "", 2740037178, 1407592183, Spawn)
	AddConversationOption(conversation, "How will you do that?", "dlg_17_5")
	StartConversation(conversation, NPC, Spawn, "I am basically working to rid these lands of all its annoyances. We've the countless undead crawling from the earth here, the foolish Thexians that inch closer by the day, vampires in the hills planning who knows what, and all of that on top of the natural dangers of this land. I am working hard to coordinate it all, but the problem is so vast it will take quite some time before I can start seeing results. For now, though, I am looking for a means to remove the undead from this place entirely.")
end

function dlg_17_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra005.mp3", "", "", 2242220429, 2833193827, Spawn)
	AddConversationOption(conversation, "What is the plan?", "dlg_17_6")
	StartConversation(conversation, NPC, Spawn, "Aside from the fact that new corpses climb from the ground every day, those that we kill do not stay dead for long. I believe, with a little work, we can at least keep those we kill from coming back. But nothing is certain.")
end

function dlg_17_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra006.mp3", "", "", 1387820344, 2294616380, Spawn)
	AddConversationOption(conversation, "I can do that.", "dlg_17_7")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "For now I'd like you to search the field to our south. The halflings and elf rangers brought many things into our forest, including small tokens meant to remind them of home--to remind them of what they were dying for. I'd like you to collect some of these for me.")
end

function dlg_17_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra007.mp3", "", "", 2780056941, 3072789247, Spawn)
	AddConversationOption(conversation, "I'll be back.", "dlg_17_8")
	StartConversation(conversation, NPC, Spawn, "Good.")
end