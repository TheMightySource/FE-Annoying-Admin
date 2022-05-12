

game.Players.LocalPlayer.Chatted:Connect(function(message)
	local split = message:split(" ")
	if message == ".unorbit" then
		getgenv().Orbitingygifqwdoqu = false
	end
		
		if message == ".crash " then
		if identifyexecutor() == "Celery" then
				rnet.shutdown()
				end
	        end
		
		if message == ".cmds" then
			print(' COMMANDS: \n *.cmds\n * .rejoin\n * .nerdify {hat name} e.g: .nerdify Nerd (use dex to find hat name, default is Nerd Hat https://www.roblox.com/catalog/9120783085/Nerd-Alert)\n * .execute {file name} e.g: .execute Script.lua (a file named "Script.lua" must be located in your workspace folder)\n * .orbit {full player name} {speed} {radius} {eclipse} e.g: .orbit Glizzy_Phobia 1 8 1\n * .unorbit\n * .annoy {full player name} e.g: .annoy Glizzy_Phobia\n * .unannoy\n * .grabtools (hasnt been tested yet)\n * .droptools\n * .removemesh\n * .chatbot {time per chat} e.g: .chatbot 3\n * .unchatbot\n * .to {player} e.g: .to Glizzy_Phobia')
	game.StarterGui:SetCore("SendNotification", {
		Title = "FE Annoying Admin";
		Text = "Check console (F9) for a list of commands."
	})
			end

if split[1] == ".to" then
local plr1 = game.Players.LocalPlayer.Character
local plr2 = game.Workspace:FindFirstChild(split[2])
plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
end

if split[1] == ".nerdify" then
	--// set this as u want
local hat = split[2]
local debug_prints = true --// prints when something happens ex: when script welds get deleted

--// keep these as defualt
local VER = "1.0.0c"
local nerd = game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat)
local chr = game:GetService("Players").LocalPlayer.Character
local players = game:GetService('Players')

local ngui = Instance.new("ScreenGui")
local d = Instance.new("Frame")
local l1 = Instance.new("UIListLayout")
local n = Instance.new("TextLabel")
local p = Instance.new("TextBox")
local hb = Instance.new("TextButton")
local hb_2 = Instance.new("TextButton")
local c = Instance.new("Frame")
local cb = Instance.new("TextButton")
local l2 = Instance.new("UIListLayout")
local e = Instance.new("TextButton")

local function debugprint(text)
    if debug_prints == true then
       print(text)
    end
end

local function clearwelds()
    --// vel loop
    spawn(function()
        game:GetService("RunService").Heartbeat:connect(function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat):WaitForChild("Handle").Velocity = Vector3.new(0, 35, 0)
        end)
    debugprint("vel loopd'd for script welds")
    end)
    wait()
    
    --// delete script attachments
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle:FindFirstChild("Attachment") then
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle:FindFirstChild("Attachment"):Destroy()
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle:FindFirstChild("AlignPosition"):Destroy()
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle:FindFirstChild("AlignOrientation"):Destroy()
        debugprint("the script weld destroyed")
    end
end




local function renerd()
    --// vel loop
    spawn(function()
        game:GetService("RunService").Heartbeat:connect(function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat):WaitForChild("Handle").Velocity = Vector3.new(0, 35, 0)
        end)
    debugprint("vel loopd'd")
    end)
    wait()
    
    --// delete hat attachment
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle:FindFirstChild("AccessoryWeld") then
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle.AccessoryWeld:Destroy()
        debugprint("hat weld gon donzo'd")
    end
end

--// define gui
ngui.Name = "ngui"
ngui.Parent = game:GetService("CoreGui")

d.Name = "d"
d.Parent = ngui
d.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
d.BackgroundTransparency = 0.500
d.BorderColor3 = Color3.fromRGB(25, 25, 25)
d.Position = UDim2.new(0.0713541657, 0, 0.107407406, 0)
d.Size = UDim2.new(0, 232, 0, 176)
d.ZIndex = 0

l1.Name = "l1"
l1.Parent = d
l1.HorizontalAlignment = Enum.HorizontalAlignment.Center
l1.SortOrder = Enum.SortOrder.LayoutOrder
l1.Padding = UDim.new(0, 4)

n.Name = "n"
n.Parent = d
n.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
n.BackgroundTransparency = 1.000
n.Position = UDim2.new(0.260775864, 0, 0, 0)
n.Size = UDim2.new(0, 120, 0, 28)
n.Font = Enum.Font.RobotoMono
n.Text = "nerd gui :troll:"
n.TextColor3 = Color3.fromRGB(255, 255, 255)
n.TextSize = 14.000

p.Name = "p"
p.Parent = d
p.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
p.BackgroundTransparency = 0.750
p.BorderColor3 = Color3.fromRGB(0, 0, 0)
p.Position = UDim2.new(0.0301724132, 0, 0.13333334, 0)
p.Size = UDim2.new(0, 218, 0, 34)
p.Font = Enum.Font.RobotoMono
p.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
p.PlaceholderText = "player"
p.Text = ""
p.TextColor3 = Color3.fromRGB(255, 255, 255)
p.TextSize = 14.000

hb.Name = "hb"
hb.Parent = d
hb.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
hb.BackgroundTransparency = 0.750
hb.BorderColor3 = Color3.fromRGB(0, 0, 0)
hb.Size = UDim2.new(0, 218, 0, 34)
hb.Font = Enum.Font.RobotoMono
hb.Text = "nerd them"
hb.TextColor3 = Color3.fromRGB(255, 255, 255)
hb.TextSize = 14.000

hb_2.Name = "hb_2"
hb_2.Parent = d
hb_2.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
hb_2.BackgroundTransparency = 0.750
hb_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
hb_2.Size = UDim2.new(0, 218, 0, 34)
hb_2.Font = Enum.Font.RobotoMono
hb_2.Text = "hold nerd"
hb_2.TextColor3 = Color3.fromRGB(255, 255, 255)
hb_2.TextSize = 14.000

c.Name = "c"
c.Parent = d
c.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
c.BackgroundTransparency = 1.000
c.Position = UDim2.new(0.0301724132, 0, 0.834285736, 0)
c.Size = UDim2.new(0, 218, 0, 23)

cb.Name = "cb"
cb.Parent = c
cb.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
cb.BackgroundTransparency = 0.750
cb.BorderColor3 = Color3.fromRGB(0, 0, 0)
cb.Size = UDim2.new(0, 23, 0, 23)
cb.Font = Enum.Font.RobotoMono
cb.Text = "x"
cb.TextColor3 = Color3.fromRGB(255, 255, 255)
cb.TextSize = 14.000

l2.Name = "l2"
l2.Parent = c
l2.FillDirection = Enum.FillDirection.Horizontal
l2.SortOrder = Enum.SortOrder.LayoutOrder
l2.Padding = UDim.new(0, 4)

e.Name = "e"
e.Parent = c
e.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
e.BackgroundTransparency = 0.750
e.BorderColor3 = Color3.fromRGB(0, 0, 0)
e.Size = UDim2.new(0, 23, 0, 23)
e.Font = Enum.Font.RobotoMono
e.Text = "e"
e.TextColor3 = Color3.fromRGB(255, 255, 255)
e.TextSize = 14.000

--// extra make
local ed = Instance.new("Frame")
local l3 = Instance.new("UIListLayout")
local en = Instance.new("TextLabel")
local hn = Instance.new("TextButton")
local mhn = Instance.new("TextButton")
local fb = Instance.new("TextButton")
local ec = Instance.new("Frame")
local l4 = Instance.new("UIListLayout")
local ce = Instance.new("TextButton")

--// extra define
ed.Name = "ed"
ed.Parent = ngui
ed.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ed.BackgroundTransparency = 0.500
ed.BorderColor3 = Color3.fromRGB(25, 25, 25)
ed.Position = UDim2.new(0.309374988, 0, 0.139814824, 0)
ed.Size = UDim2.new(0, 232, 0, 176)
ed.ZIndex = 0
ed.Visible = false

l3.Name = "l3"
l3.Parent = ed
l3.HorizontalAlignment = Enum.HorizontalAlignment.Center
l3.SortOrder = Enum.SortOrder.LayoutOrder
l3.Padding = UDim.new(0, 4)

en.Name = "en"
en.Parent = ed
en.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
en.BackgroundTransparency = 1.000
en.Position = UDim2.new(0.241379306, 0, 0, 0)
en.Size = UDim2.new(0, 139, 0, 28)
en.Font = Enum.Font.RobotoMono
en.Text = "extra nerdy stuff"
en.TextColor3 = Color3.fromRGB(255, 255, 255)
en.TextSize = 14.000

hn.Name = "hn"
hn.Parent = ed
hn.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
hn.BackgroundTransparency = 0.750
hn.BorderColor3 = Color3.fromRGB(0, 0, 0)
hn.Size = UDim2.new(0, 218, 0, 34)
hn.Font = Enum.Font.RobotoMono
hn.Text = "hide nerd"
hn.TextColor3 = Color3.fromRGB(255, 255, 255)
hn.TextSize = 14.000

mhn.Name = "mhn"
mhn.Parent = ed
mhn.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
mhn.BackgroundTransparency = 0.750
mhn.BorderColor3 = Color3.fromRGB(0, 0, 0)
mhn.Size = UDim2.new(0, 218, 0, 34)
mhn.Font = Enum.Font.RobotoMono
mhn.Text = "make person hold nerd"
mhn.TextColor3 = Color3.fromRGB(255, 255, 255)
mhn.TextSize = 14.000

fb.Name = "fb"
fb.Parent = ed
fb.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
fb.BackgroundTransparency = 0.750
fb.BorderColor3 = Color3.fromRGB(0, 0, 0)
fb.Size = UDim2.new(0, 218, 0, 34)
fb.Font = Enum.Font.RobotoMono
fb.Text = "make follow behind"
fb.TextColor3 = Color3.fromRGB(255, 255, 255)
fb.TextSize = 14.000

ec.Name = "ec"
ec.Parent = ed
ec.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ec.BackgroundTransparency = 1.000
ec.Size = UDim2.new(0, 218, 0, 23)

l4.Name = "l4"
l4.Parent = ec
l4.FillDirection = Enum.FillDirection.Horizontal
l4.SortOrder = Enum.SortOrder.LayoutOrder
l4.Padding = UDim.new(0, 4)

ce.Name = "ce"
ce.Parent = ec
ce.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
ce.BackgroundTransparency = 0.750
ce.BorderColor3 = Color3.fromRGB(0, 0, 0)
ce.Size = UDim2.new(0, 23, 0, 23)
ce.Font = Enum.Font.RobotoMono
ce.Text = "x"
ce.TextColor3 = Color3.fromRGB(255, 255, 255)
ce.TextSize = 14.000

local function weld(part0, part1, att1)
    local att0 = Instance.new("Attachment", part0)
    if part0 == nerd.Handle then
        att0.Position = Vector3.new(0, 0, 0)
        att0.Rotation = Vector3.new(0, 0, 0)
    end
    local AP = Instance.new("AlignPosition", part0)
    AP.Attachment0 = att0
    AP.Attachment1 = att1
    AP.ApplyAtCenterOfMass = false
    AP.RigidityEnabled = false
    AP.ReactionForceEnabled = false
    AP.MaxForce = 64060 * part0.Size.X * part0.Size.Y * part0.Size.Z * part1.Size.X * part1.Size.Y * part1.Size.Z
    AP.MaxVelocity = math.huge / 9e110
    AP.Responsiveness = math.huge * math.huge * math.huge * math.huge
    local AO = Instance.new("AlignOrientation", part0)
    AO.Attachment0 = att0
    AO.Attachment1 = att1
    AO.RigidityEnabled = false
    AO.ReactionTorqueEnabled = false
    AO.PrimaryAxisOnly = false
    AO.MaxTorque = 42060 * part0.Size.X * part0.Size.Y * part0.Size.Z * part1.Size.X * part1.Size.Y * part1.Size.Z
    AO.MaxAngularVelocity = math.huge / 9e110
    AO.Responsiveness = math.huge * math.huge * math.huge * math.huge
end

--// drag
local UIS = game:GetService("UserInputService")
function dragify(Frame)
    dragToggle = nil
    local dragSpeed = 0.125
    dragInput = nil
    dragStart = nil
    local dragPos = nil
    function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)
    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragToggle then
            updateInput(input)
        end
    end)
end

function zdragify(Frame)
	zdragToggle = nil
	local zdragSpeed = 0
	zdragInput = nil
	zdragStart = nil
	local zdragPos = nil
	function zupdateInput(input)
		local zDelta = input.Position - zdragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + zDelta.X, startPos.Y.Scale, startPos.Y.Offset + zDelta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(zdragSpeed), {Position = Position}):Play()
	end
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
			zdragToggle = true
			zdragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					zdragToggle = false
				end
			end)
		end
	end)
	Frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			zdragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == zdragInput and zdragToggle then
			zupdateInput(input)
		end
	end)
end

dragify(d)
zdragify(ed)

--// buttons
cb.MouseButton1Click:Connect(function()
    ngui:Destroy()
end)

e.MouseButton1Click:Connect(function()
    ed.Visible = true
end)

ce.MouseButton1Click:Connect(function()
    ed.Visible = false
end)

hb.MouseButton1Click:Connect(function()
    local person = game.Players:FindFirstChild(p.Text).Character
    
    renerd()
    clearwelds()
    wait()
    weld(game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle, person["Head"], person["Head"].HatAttachment)
    wait()
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle.Attachment.Position = Vector3.new(0, 0.5, 0)
end)

hb_2.MouseButton1Click:Connect(function()
    renerd()
    clearwelds()
    wait()
    weld(game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle, players.LocalPlayer.Character["Left Arm"], players.LocalPlayer.Character["Left Arm"].LeftGripAttachment)
    wait()
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle.Attachment.Position = Vector3.new(0, 0.5, 0)
end)

--[[
local ed = Instance.new("Frame")
local l3 = Instance.new("UIListLayout")
local en = Instance.new("TextLabel")
local hn = Instance.new("TextButton")
local mhn = Instance.new("TextButton")
local fb = Instance.new("TextButton")
local ec = Instance.new("Frame")
local l4 = Instance.new("UIListLayout")
local ce = Instance.new("TextButton")
]]

hn.MouseButton1Click:Connect(function()
    renerd()
    clearwelds()
    wait()
    weld(game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle, players.LocalPlayer.Character["HumanoidRootPart"], players.LocalPlayer.Character["HumanoidRootPart"].RootAttachment)
    wait()
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle.Attachment.Position = Vector3.new(0, 10, 0)
end)

mhn.MouseButton1Click:Connect(function()
    local person = game.Players:FindFirstChild(p.Text).Character
    
    renerd()
    clearwelds()
    wait()
    weld(game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle, person["Left Arm"], person["Left Arm"].LeftGripAttachment)
    wait()
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle.Attachment.Position = Vector3.new(0, 0.5, 0)
end)

fb.MouseButton1Click:Connect(function()
    local person = game.Players:FindFirstChild(p.Text).Character
    
    renerd()
    clearwelds()
    wait()
    weld(game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle, person["Head"], person["Head"].HatAttachment)
    wait()
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle.Attachment.Position = Vector3.new(-2, 0.5, -2)
end)

warn([[

🤓 N E R D 🤓
 
🤓 running on ver ]]..VER..[[ 🤓
🤓 by spec 🤓
]])
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
	
	if message == ".grabtools" then
		local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Backpack = Player.Backpack

local GrabTools = function()
local WorkspaceDescendants = workspace:GetDescendants()

for _, Descendant in pairs(WorkspaceDescendants) do
if Descendant:IsA("Tool") or Descendant:IsA("HopperBin") then
Descendant:Clone().Parent = Backpack
end
end
end

GrabTools()
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
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local TextButton = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")

--Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScrollingFrame.Parent = ScreenGui
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.359895825, 0, 0.190303028, 0)
ScrollingFrame.Size = UDim2.new(0, 335, 0, 474)
ScrollingFrame.Visible = false
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 10, 0)

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(0, 268, 0, 50)
TextButton.Visible = false
TextButton.Font = Enum.Font.SourceSans
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.TextXAlignment = Enum.TextXAlignment.Right

ImageLabel.Parent = TextButton
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(0, 50, 0, 50)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

-- Scripts:

local function LPFOMVV_fake_script() -- ScrollingFrame.LocalScript 
	local script = Instance.new('LocalScript', ScrollingFrame)

	local template = script.Parent.Parent.TextButton

	for i,v in pairs(game.Players:GetChildren()) do
		local clone = template:Clone()
		clone.Text = v.Name .. " ("..v.DisplayName .. ")"
		clone.ImageLabel.Image = game.Players:GetUserThumbnailAsync(game.Players[v.Name].UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size420x420)
		clone.Visible = true
		clone.Parent = script.Parent
		clone.Name = v.Name
		clone.MouseButton1Click:Connect(function()
			setclipboard(v.Name)
		end)
	end

	game.Players.PlayerAdded:Connect(function(player)
		local clone = template:Clone()
		clone.Text = player.Name
		clone.ImageLabel.Image = game.Players:GetUserThumbnailAsync(game.Players[player.Name].UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size420x420)
		clone.Visible = true
		clone.Parent = script.Parent
		clone.Name = player.Name
		clone.MouseButton1Click:Connect(function()
			setclipboard(player.Name)
		end)

	end)

	game.Players.PlayerRemoving:Connect(function(player)
		script.Parent:FindFirstChild(player.Name).Parent = game.Workspace
	end)
end
coroutine.wrap(LPFOMVV_fake_script)()
local function OBSN_fake_script() -- ScrollingFrame.Keybind Script 
	local script = Instance.new('LocalScript', ScrollingFrame)

	local frame = script.Parent
	local hotkey = Enum.KeyCode.RightControl

	local UIS = game:GetService("UserInputService")
	local open = false



	UIS.InputBegan:Connect(function(key, gp)
		if key.KeyCode == hotkey then
			if UIS:GetFocusedTextBox() == nil then
				if open == false then
					open = true 
					frame.Visible = open
				elseif open == true then
					open = false
					frame.Visible = open
				end
			end
		end
	end)

end
coroutine.wrap(OBSN_fake_script)()
local function FHGG_fake_script() -- ScrollingFrame.Dragify 
	local script = Instance.new('LocalScript', ScrollingFrame)

	local UIS = game:GetService("UserInputService")
	local dragSpeed = -math.huge

	local dragToggle = nil
	local dragInput = nil
	local dragStart = nil
	local dragPos = nil

	function dragify(Frame)
		function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			script.Parent.Position = Position
		end

		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end

	dragify(script.Parent)
end
coroutine.wrap(FHGG_fake_script)()

	game.StarterGui:SetCore("SendNotification", {
		Title = "FE Annoying Admin";
		Text = "Script successfully loaded!"
	})
