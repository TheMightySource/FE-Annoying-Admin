game.Players.LocalPlayer.Chatted:Connect(function(message)
	local split = message:split(" ")
	if message == ".unorbit" then
		getgenv().Orbitingygifqwdoqu = false
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
gethui(ScreenGui)
ScrollingFrame.Parent = ScreenGui
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.359895825, 0, 0.190303028, 0)
ScrollingFrame.Size = UDim2.new(0, 335, 0, 474)
ScrollingFrame.Visible = false

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
		clone.Text = v.Name
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
		script.Parent:FindFirstChild(player.Name):Remove()
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
