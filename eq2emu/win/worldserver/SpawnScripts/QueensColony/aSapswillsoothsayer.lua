--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

local GhostsAndGoblins = 184
local DoggoneIt = 165
local ADiplomaticMission = 166

function spawn(NPC)
	ProvidesQuest(NPC, ADiplomaticMission)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
   
	if HasCompletedQuest(Spawn, GhostsAndGoblins) then
		GrexxPromises(NPC, Spawn, 0)
	elseif HasQuest(Spawn, GhostsAndGoblins) then
		if GetQuestStep(Spawn, GhostsAndGoblins) == 4 then
			GrexxPromises(NPC, Spawn, 1)
		elseif GetQuestStep(Spawn, GhostsAndGoblins) >= 4 and GetQuestStep(Spawn, GhostsAndGoblins) <= 8 then
			GrexxPromises(NPC, Spawn, 0)
		elseif GetQuestStep(Spawn, GhostsAndGoblins) == 9 then
			GrexxPromises(NPC, Spawn, 2)
		end
	else
		GrexxPromises(NPC, Spawn, 0)
	end
end

function GrexxPromises(NPC, Spawn, Choice)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, DoggoneIt) then
		if HasCompletedQuest(Spawn, ADiplomaticMission) then
		elseif HasQuest(Spawn, ADiplomaticMission) then
			AddConversationOption(conversation, "I just wanted to say, about that present...", "GiftFromQeynos")
		else
			AddConversationOption(conversation, "I just wanted to say, about that present...", "GiftFromQeynos")
		end
	elseif HasQuest(Spawn, DoggoneIt) then
		if GetQuestStep(Spawn, DoggoneIt) == 7 then
			AddConversationOption(conversation, "I bring you a gift from the people of Qeynos.", "GiftFromQeynos")
		end
	end

	if Choice == 1 then
		AddConversationOption(conversation, "The Forest Keeper sent me to ...", "ForestKeeperSentMe")
	elseif Choice == 2 then
		AddConversationOption(conversation, "I've gotten the items you've asked for.", "GotYourItemsBitch")
	end

	AddConversationOption(conversation, "I'll bet they are.")
	StartConversation(conversation, NPC, Spawn, "Grexx promises us and his promise is kept!")
end

function ForestKeeperSentMe(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "But what...", "ButWhat")
	StartConversation(conversation, NPC, Spawn, "Forest Keeper, big tree! Yes, yes, waiting for you. Big tree, big promise! Water is needed, yes! Three waters, fallen from the skies and the roots from deep beneath! Fetch the waters! Gather the roots!")
end

function ButWhat(NPC, Spawn)
	SetStepComplete(Spawn, GhostsAndGoblins, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Well. Okay.")
	StartConversation(conversation, NPC, Spawn, "Nothing more to say! Big tree sends you to me to help! Big tree keeps promise! Bring waters and roots first, then sayings I will sooth! Must bring to me, or nothing more will I say!")
end

function GotYourItemsBitch(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "The Forest Keeper said you'd know how to stop the corruption of the colony.", "ForestKeeperSaid")
	StartConversation(conversation, NPC, Spawn, "Yes! Yes! Freshest waters! Tasty roots! Now will I tell you what you want to know. What you want to know?")
end

function ForestKeeperSaid(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Then what was all that stuff for?", "StuffFor")
	StartConversation(conversation, NPC, Spawn, "Me? No! Grexx knows all, no sayings need to sooth on that! Ha! Why tree tell you such a joke? Ha! Evil things creeping up on poor gobbies, long time now! Big tree is wrong, nothing new to know about that. Happy you came to help us, though!")
end

function StuffFor(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You mean you're going to make a brew out of them?", "MakeBrew")
	StartConversation(conversation, NPC, Spawn, "Ah, tasty roots! Mash them up, grind them up and soak in the waters. After the moons are new again, ready to drink, it is! Helps to forget, helps to remember. Tasty Roots!")
end

function MakeBrew(NPC, Spawn)
	SetStepComplete(Spawn, GhostsAndGoblins, 9)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I don't think it's very even.")
	StartConversation(conversation, NPC, Spawn, "Yes, yes! Tasty brew! If you knew there was no sooth to be said, would you have got tasty roots and fresh waters for us? No! So now we have them and now you will know as much as Sapswills! Even trade! Even trade! Share with you, we will, too!")
end

------------------------------------------------------------------------------------------
--			diplomat quest
------------------------------------------------------------------------------------------

function GiftFromQeynos(NPC, Spawn)
	if HasQuest(Spawn, DoggoneIt) and HasItem(Spawn, 1565) then
		-- remove a Diplomatic Gift
		RemoveItem(Spawn, 1565)
		SetStepComplete(Spawn, DoggoneIt, 7)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasQuest(Spawn, ADiplomaticMission) and not HasCompletedQuest(Spawn, ADiplomaticMission) and HasCompletedQuest(Spawn, DoggoneIt) then
		AddConversationOption(conversation, "It's a small token of friendship. A diplomatic gesture.", "TokenOfFriendship")
	end
	
	AddConversationOption(conversation, "It's my pleasure to meet you.")
	StartConversation(conversation, NPC, Spawn, "Hello! Hello! I knew you would be coming! I knew! And bringing a present...we loves presents!")
end

------------------------------------------------------------------------------------------
--			diplomat quest
------------------------------------------------------------------------------------------

function TokenOfFriendship(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll pay my respect to your...er people.", "OfferQuest1")
	AddConversationOption(conversation, "I need to run.")
	StartConversation(conversation, NPC, Spawn, "Friends for life, we are now! Is our tradition to greet everyone we meet. Go meet the Sapswills! Is the diplomatic way! Hail them all! We like friends! Meet the Sapswills, then meet High Chiefain Grexx! He likes friends too! To long life and happy friendships!")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, ADiplomaticMission)
end