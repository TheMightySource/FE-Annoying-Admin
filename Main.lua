game.Players.LocalPlayer.Chatted:Connect(function(message)
	local split = message:split(" ")
	if message == ".unorbit" then
		getgenv().Orbitingygifqwdoqu = false
	end
	
	if string[1] == ".fov" then
		game.Workspace.Camera.FieldOfView = string[2]
	end
	
	if string[1] == ".ws" then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = string[2]
	end
	
		if string[1] == ".jp" then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = string[2]
	end
	
	if message == ".rejoin" then
		local tpservice= game:GetService("TeleportService")
local plr = game.Players.LocalPlayer

tpservice:Teleport(game.PlaceId, plr)
	end
	
	if message == ".unannoy" then
		getgenv().annoyingygifqwdoqu = false
	end
	
	if split[1] == ".execute" then
		loadstring(readfile(split[2]))()
	end
	
	if split[1] == ".orbit" then
		getgenv().Orbitingygifqwdoqu = true
		getgenv().Name = split[2]
local lpr = game.Players.LocalPlayer.Character.HumanoidRootPart
getgenv().speed = split[3]
getgenv().radius = split[4] --- orbit size
getgenv().eclipse = split[5] --- width of orbit
local rotation = CFrame.Angles(0,0,0) --only works for unanchored parts (not localplayer)
local sin, cos = math.sin, math.cos
local rotspeed = math.pi*2/getgenv().speed
getgenv().eclipse = getgenv().eclipse * getgenv().radius
local runservice = game:GetService('RunService')
local rot = 0

game:GetService('RunService').Stepped:connect(function(t, dt)
	if getgenv().Orbitingygifqwdoqu == true then
rot = rot + dt * rotspeed
if game.Players:FindFirstChild(getgenv().Name) then
	if game.Players:FindFirstChild(getgenv().Name).Character:FindFirstChild("HumanoidRootPart") then
lpr.CFrame = rotation * CFrame.new(sin(rot)*getgenv().eclipse, 0, cos(rot)*getgenv().radius) + game.Players:FindFirstChild(getgenv().Name).Character.HumanoidRootPart.Position
end
end
end
end)
	end
	
			if split[1] == ".annoy" then
				getgenv().annoyingygifqwdoqu = true
		getgenv().annoyname = split[2]
		game:GetService('RunService').Stepped:connect(function()
			if getgenv().annoyingygifqwdoqu == true then
       if game.Players:FindFirstChild(getgenv().annoyname) then
	if game.Players:FindFirstChild(getgenv().annoyname).Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(getgenv().annoyname).Character.HumanoidRootPart.CFrame
end
end
end
end)
	end
	if split[1] == ".droptools" then
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
   if v:IsA("Tool")  then
    wait(0.1)
    v.Parent = game.Players.LocalPlayer.Character
    wait(0.1)
    v.Parent = game.Workspace
end
end
	end

	
	if split[1] == ".removemesh" then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if v:IsA("SpecialMesh") then
				v:Destroy()
			end
		end
	end
	
	if split[1] == ".unchatbot" then
		getgenv().SpamChatogrsehgfguyasdoigap = false
	end
	
	if split[1] == ".chatbot" then
		getgenv().spamchattime = split[2]
		getgenv().SpamChatogrsehgfguyasdoigap = true
	while wait(getgenv().spamchattime) do
		if getgenv().SpamChatogrsehgfguyasdoigap == true then
			local Quotes = {
			  "You're bad at the game bro.",
  "I dont talk to you.",
  "Noob.",
  "kid.",
  "Shutup.",
  "SHUTUP NOOB.",
  "LEAVE OR REPORT.",
  "Bro I going to report to ROBLOX.",
  "All you do is the same thing.",
  "I dont talk to noobs.",
  "OUT.",
  "NOOB.",
  "Eat batteries.",
  "...",
  "Reported.",
  "Lol noob",
  "get RKT.",
  "Um.",
  "Lol",
  "Stop.",
  ">:(",
  ":/",
  ">:C",
  ">:[",
  "Kid.",
  "Stop being dumb.",
  "Why are you talking to me?",
  "=D",
  "Psh.",
  "Get out.",
  "Are you bad?",
  ".....................................",
  "I think you're stupid dude it's obvious.",
  "You're pathetic.",
  "I am a bot programmed to insult people.",
  "Why are you responding to my chat?",
  "LOL",
  "You're not cool.",
  "EAT BLEACH CRACKERS NOOB.",
  "You're kidding me.",
  "DUMB.",
  "STUPID.",
  "Drink Windex out of your mom.",
  "I don't bully people.",
  "I aim to be the most highly targeted person in this server.",
  "Your messages aren't even being taken into consideration.",
  "I don't even know what you're saying.",
  "Dude...",
  "Stop now.",
  "Go away.",
  "Why?",
  "What's going on?",
  "You're salty enough to season my food.",
  "You're wasting time.",
  "You need to stop.",
  "Bruh.",
  "Lame.",
  "Stop playing ROBLOX",
  "This is hilarious",
  "Your reaction is exactly what I wanted to happen",
  "Turn off your computer",
  "ILL HACK YOU",
  "I HAVE YOUR INFORMATION",
  "Roblox will delete your account tommorow.",
  "I contacted ROBLOX and told them about you",
  "I work at ROBLOX i'll be banning you soon.",
  "I'm telling my boss",
  "The game doesn't matter",
  "Skills dont matter",
  "I'll be telling the owner of the game.",
  "What you're doing isnt gonna work.",
  "It's not working dude.",
  "Stop trying.",
  "I think you need to reconsider your actions.",
  "Lets be friendS",
  "Why are you talking to a bot bro?",
  "Eat your graphics card",
  "I bet you bought your pc from walmart",
  "Your PC sucks",
  "NOOOOOOOOOB",
  "GET OUT OF MY SERVER",
  "IM REPORTING",
  "IM TELLING MOM",
"you suck bro 😂",
"quit the game fr",
"no dad moment?",
"you are so garbage",
"too easy lol",
"lol nice",
"ngl i knew you were a furry",
"pick me",
"bozo",
"ratio keep crying bud 🤣",
"yeah bro fr fr yeah definitely agree 100%",
"clown🤡🤡🤡",
""
}

	local Random = Quotes[math.random(1,#Quotes)]
	-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = Random,
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	
end
		end
end
end)
