--[[
    Script Name    : Quests/QueensColny/welcome_to_norrath.lua
    Script Author  : Zcoretri
    Script Date    : 2015.08.03
    Script Purpose : Handles the quest, "Welcome to Norrath"

        Zone       : The Queens Colony
        Quest Giver: Proximity
        Preceded by: None
        Followed by: The Art of Combat
--]]

function Init(Quest)
    AddQuestStepChat(Quest, 1, "I need to speak with Murrar Shar. He is at the entrance to Myrrin's Tower in the center of the Colony.", 1, "", 0, 2530076)
    AddQuestStepCompleteAction(Quest, 1, "step1_complete")
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function step1_complete(Quest, QuestGiver, Player)
    UpdateQuestDescription(Quest, "I spoke with Murrar Shar.")
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)

end

