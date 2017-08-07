--[[
	Script Name		:	TheEverlingLockets.lua
	Script Purpose	:	Handles the quest, "The Everling Lockets"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	9/6/2016
	Script Notes	:	

	Zone			:	Hallmark
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStep(Quest, 1, "I need to find Elise Everling and gain her locket.", 1, 100, "I need to find Rikantus Everlings six daughters and acquire their lockets.", 20, 1780273)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have acquired Elise's Locket.")

	AddQuestStep(Quest, 2, "I need to find Crysta Everling and gain her locket.", 1, 100, "I need to find Rikantus Everlings six daughters and acquire their lockets.", 20, 1780276)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have acquired Crysta's Locket.")

	AddQuestStep(Quest, 3, "I need to find Melanie Everling and gain her locket.", 1, 100, "I need to find Rikantus Everlings six daughters and acquire their lockets.", 20, 1780275)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have acquired Melanie's Locket.")

	AddQuestStep(Quest, 4, "I need to find Deirdre Everling and gain her locket.", 1, 100, "I need to find Rikantus Everlings six daughters and acquire their lockets.", 20, 1780278)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have acquired Deirdre's Locket.")

	AddQuestStep(Quest, 5, "I need to find Sheila Everling and gain her locket.", 1, 100, "I need to find Rikantus Everlings six daughters and acquire their lockets.", 20, 1780272)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have acquired Sheila's Locket.")

	AddQuestStep(Quest, 6, "I need to find Jenni Everling and gain her locket.", 1, 100, "I need to find Rikantus Everlings six daughters and acquire their lockets.", 20, 1780243)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have acquired Jenni's Locket.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found all of the lockets.")

	AddQuestStep(Quest, 7, "I need to find a way into the basement.", 1, 100, "I need to find a way into the basement.", 11)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I found a key on a decaying corpse, but I don't know what it is for.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found a key on a decaying corpse, I'm not sure what it is for.")

	AddQuestStep(Quest, 8, "I need to figure out what this key goes to.", 1, 100, "I need to figure out what this key goes to.", 11)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "")
	UpdateQuestTaskGroupDescription(Quest, 3, "I entered Lord Everlings bedroom and was attacked by the captain of the guard. I found the guard captains sword.")

	AddQuestStep(Quest, 9, "I have to find Ollix Everlings pendant.", 1, 100, "I need to find Ollix Everling and take his pendant.", 13)
	AddQuestStepCompleteAction(Quest, 9, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "We have found the six lockets and Ollix's pendant. Now we must find Lord Everlings Chamber.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end