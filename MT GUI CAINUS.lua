--[ Kick when admin joins ]--
local gameAdmins = {
    1311715825, -- p4trixx--
    7506184, -- bovril_enjoyer--
    225760057, -- Apellon--
    3003526, -- Ocean_Archer--
    83855370, -- inkwaves--
    78128266, -- oliupp--
    16149489, -- br_ay--
    1477556058, -- BurningLynx234e
    213679398, -- ZolanskiPaloski--
    25579884, -- alypoos--
    148413720, -- th0m4xs
    98283374, -- dzyton
}

local respected = {
    681761287, -- ange1uxs
    942605883, -- dyI4xn
    383358806, -- wajnaroblox
    1477556058, -- BurningLynx234
    68170705, -- aestraie
    1353775535, -- Cashinities
    1745779692, -- AxeIcius
    1354288490, -- vnxore
    2062732358, -- E_piang
    277094762, -- Aphoticia
    72531907, -- incubies
    407567340, -- robloxwizard20005--
}

game.Players.PlayerAdded:Connect(function(plr)
	for i, v in pairs(gameAdmins) do
		if plr.UserId == v then
			game.Players.LocalPlayer:Kick("Admin joined -- " .. v)
		end	
	end
end)


game.Players.PlayerAdded:Connect(function(plr)
	for i, v in pairs(respected) do
		if plr.UserId == v then
			game.Players.LocalPlayer:Kick("Respected player joined -- " .. v)
		end	
	end
end)


-- ui
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local coloroverride = {}

local ui = library.Load({
	Title = "Magic Training",
	Style = 1,
	Theme = "Mocha",
	SizeX = 500,
	SizeY = 350,
})

local main = ui.New({Title = "Main"})
local character = ui.New({Title = "Character"})
local auras = ui.New({Title = "Auras"})
local fun = ui.New({Title = "Fun"})
local spl = ui.New({Title = "Spells"})
local tps = ui.New({Title = "Teleports"})
local misc = ui.New({Title = "Misc"})
--

local function spamwand()
	--[[ BY NAMELESS#9000 ]]

local module = require(game:GetService("ReplicatedStorage").Modules.spellModule);

local Settings = {
	coolDown = 0, 
	speed = 9000, 
	range = 9000
}


for _,Spell in pairs(module.projectileData) do 
	for Name,Value in pairs(Settings) do 
		Spell[Name] = Value
	end
end

function op()
	wait(.25)
	for _,v in pairs(getreg()) do
		if (type(v) == 'function') then
			local scr = getfenv(v)
			if scr.characterAdded then
				print'characterAdded Spoofed!'
				scr.characterAdded = function() end
			end
			if scr.wipe then
				print'wipe Spoofed!'
				scr.wipe = function() end
			end
			if scr.banPlayer then
				print'banPlayer Spoofed!'
				scr.banPlayer = function() end
			end
			if scr.troll then
				print'troll Spoofed!'
				scr.troll = function() end
			end
			if scr.unloadSpell then
				print'unloadSpell Spoofed!'
				scr.unloadSpell = function() end
			end
			if scr.setSpellLoaded then
				print'setSpellLoaded Spoofed!'
				scr.setSpellLoaded = function(p6, p7)
					if p6 == nil and p7 == false then return end
					scr.casts = 0;
					scr.loadedSpell = p6;
					if not scr.spellModule.uniqueSpells[p6] then
						scr.fireEvent(scr.events.setSpellLoaded, {
							tool = scr.tool, 
							spellName = p6, 
							bool = p7
						});
					end;
				end
			end
			if scr.inputBegan then
				print'inputBegan Spoofed!'
				scr.inputBegan = function(mouse, p19)
					local uit= mouse.UserInputType;
					if not p19 then
						if uit~= Enum.UserInputType.MouseButton1 then
							if uit== Enum.UserInputType.Touch then
								scr.onCast(scr.loadedSpell);
							elseif uit== Enum.UserInputType.Keyboard then
								if mouse.KeyCode == Enum.KeyCode.Q then
									scr.block();
								end;
							end;
						else
							scr.onCast(scr.loadedSpell);
						end;
					end;
					if uit== Enum.UserInputType.Keyboard then
						if mouse.KeyCode == Enum.KeyCode.V then
							if enabled then
								if not scr.inputService:IsKeyDown(Enum.KeyCode.LeftControl) then
									if scr.inputService:IsKeyDown(Enum.KeyCode.RightControl) then
										warn("Kick bypassed!")
									end;
								else
									warn("Kick bypassed!")
								end;
							end;
						end;
					end;
				end
			end
		end
	end
end
op()
game.Players.LocalPlayer.Backpack.ChildAdded:Connect(op)
game.Players.LocalPlayer.CharacterAdded:Connect(op)
return module;

end	

local function opthingy()
	-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local LoginFrame = Instance.new("Frame")
local Safe = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local AutoBOff = Instance.new("TextButton")
local name = Instance.new("TextBox")
local AutoBOn = Instance.new("TextButton")
local Auto = Instance.new("TextButton")
local name2 = Instance.new("TextBox")
local Spell = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local spellss = Instance.new("TextLabel")
--Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

LoginFrame.Name = "LoginFrame"
LoginFrame.Parent = ScreenGui
LoginFrame.Active = true
LoginFrame.BackgroundColor3 = Color3.new(0.333333, 0.333333, 1)
LoginFrame.Position = UDim2.new(0.338888884, 0, 0.430278897, 0)
LoginFrame.Size = UDim2.new(0, 365, 0, 202)
LoginFrame.Visible = false
LoginFrame.Draggable = true

Safe.Name = "Safe"
Safe.Parent = LoginFrame
Safe.BackgroundColor3 = Color3.new(1, 1, 0)
Safe.Position = UDim2.new(0, 0, 0.232877433, 0)
Safe.Size = UDim2.new(0, 99, 0, 30)
Safe.Font = Enum.Font.SourceSans
Safe.Text = "Safe Place"
Safe.TextColor3 = Color3.new(0, 0, 0)
Safe.TextScaled = true
Safe.TextSize = 14
Safe.TextWrapped = true

TextLabel.Parent = LoginFrame
TextLabel.BackgroundColor3 = Color3.new(0.333333, 0.333333, 1)
TextLabel.Size = UDim2.new(0, 365, 0, 33)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Made By Arda#0810"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

AutoBOff.Name = "BOff"
AutoBOff.Parent = LoginFrame
AutoBOff.BackgroundColor3 = Color3.new(1, 0, 0)
AutoBOff.Position = UDim2.new(0.364383548, 0, 0.222976446, 0)
AutoBOff.Size = UDim2.new(0, 99, 0, 30)
AutoBOff.Font = Enum.Font.SourceSans
AutoBOff.Text = "CBring"
AutoBOff.TextColor3 = Color3.new(0, 0, 0)
AutoBOff.TextScaled = true
AutoBOff.TextSize = 14
AutoBOff.TextWrapped = true

name.Name = "name"
name.Parent = LoginFrame
name.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0)
name.Position = UDim2.new(0.71506846, 0, 0.234102249, 0)
name.Size = UDim2.new(0, 92, 0, 27)
name.Font = Enum.Font.SourceSans
name.Text = "Name"
name.TextColor3 = Color3.new(0, 0, 0)
name.TextScaled = true
name.TextSize = 14
name.TextWrapped = true

AutoBOn.Name = "BOn"
AutoBOn.Parent = LoginFrame
AutoBOn.BackgroundColor3 = Color3.new(0, 1, 0)
AutoBOn.Position = UDim2.new(0.364383548, 0, 0.222976446, 0)
AutoBOn.Size = UDim2.new(0, 99, 0, 30)
AutoBOn.Visible = false
AutoBOn.Font = Enum.Font.SourceSans
AutoBOn.Text = "CBring"
AutoBOn.TextColor3 = Color3.new(0, 0, 0)
AutoBOn.TextScaled = true
AutoBOn.TextSize = 14
AutoBOn.TextWrapped = true

Auto.Name = "Auto"
Auto.Parent = LoginFrame
Auto.BackgroundColor3 = Color3.new(1, 1, 0)
Auto.Position = UDim2.new(0.120547935, 0, 0.485352635, 0)
Auto.Size = UDim2.new(0, 99, 0, 30)
Auto.Font = Enum.Font.SourceSans
Auto.Text = "Auto Spell (R)"
Auto.TextColor3 = Color3.new(0, 0, 0)
Auto.TextScaled = true
Auto.TextSize = 14
Auto.TextWrapped = true

name2.Name = "name2"
name2.Parent = LoginFrame
name2.BackgroundColor3 = Color3.new(0, 0.666667, 0)
name2.Position = UDim2.new(0.523287714, 0, 0.485352576, 0)
name2.Size = UDim2.new(0, 136, 0, 30)
name2.Font = Enum.Font.SourceSans
name2.Text = "Spell"
name2.TextColor3 = Color3.new(0, 0, 0)
name2.TextScaled = true
name2.TextSize = 14
name2.TextWrapped = true

Spell.Name = "Spell"
Spell.Parent = LoginFrame
Spell.BackgroundColor3 = Color3.new(1, 1, 0)
Spell.Position = UDim2.new(0.339726031, 0, 0.777431905, 0)
Spell.Size = UDim2.new(0, 99, 0, 30)
Spell.Font = Enum.Font.SourceSans
Spell.Text = "Spell List "
Spell.TextColor3 = Color3.new(0, 0, 0)
Spell.TextScaled = true
Spell.TextSize = 14
Spell.TextWrapped = true

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0, 0.333333, 1)
Frame.Position = UDim2.new(0.0592592582, 0, 0.430278897, 0)
Frame.Size = UDim2.new(0, 100, 0, 81)
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0, 0.666667, 0)
TextButton.Position = UDim2.new(0, 0, 0.270833343, 0)
TextButton.Size = UDim2.new(0, 100, 0, 44)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Open/Close"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true

spellss.Name = "spells"
spellss.Parent = ScreenGui
spellss.Active = true
spellss.BackgroundColor3 = Color3.new(0, 0.666667, 1)
spellss.Position = UDim2.new(0.737962902, 0, -0.958167434, 0)
spellss.Size = UDim2.new(0, 120, 0, 935)
spellss.Visible = false
spellss.Font = Enum.Font.SourceSans
spellss.Text = "Aboleo\nAccio\nAlarte Ascendare\nAppa\nAscendio\nAvada Kedavra\nBaubillious\nBombarda\nCalvorio\nCarpe Retractum\nConfringo\nConfundo\nCrucio\nDefodio\nDeletrius\nDepulso\nDiffindo\nDiminuendo\nDuro\nEbublio\nEngorgio Skullus\nEpiskey\nEverte Statum\nExpelliarmus\nExpulso\nFinite Incantatem\nFlare\nFlipendo\nGeminio\nGlacius\nIncarcerous\nIncendio\nImpedimenta\nLevicorpus\nLocomotor Wibbly\nLumos\nMelofors\nNox\nObliviate\nObscuro\nPetrificus Totalus\nProtego\nProtego Totalum\nReducto\nRelashio\nRennervate\nRictusempra\nSectumsempra\nSilencio\nStupefy\nTarantallegra\nTonitro\nVerdimillious\nVulnera Sanentur\nLiberacorpus"
spellss.TextColor3 = Color3.new(0, 0, 0)
spellss.TextSize = 17
spellss.TextWrapped = true
spellss.Draggable = true
-- Scripts:
Safe.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2000, 20000, 1000)
   baseplatee = Instance.new("Part", workspace)
   baseplatee.Size = Vector3.new(100, 1, 100)
   baseplatee.CFrame = game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame + Vector3.new(0,-2, 0)
   baseplatee.Anchored = true

end)

AutoBOff.MouseButton1Click:connect(function()
AutoBOff.Visible = false
AutoBOn.Visible = true

_G.bring = true
   while _G.bring do
       wait(0.5)
   for i,v in pairs(game.Workspace:GetChildren()) do
       if v.Name == name.Text then
   v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 2
   v.HumanoidRootPart.Anchored = true
   end
   end
   end

end)

AutoBOn.MouseButton1Click:connect(function()
AutoBOff.Visible = true
AutoBOn.Visible = false

_G.bring = false
   while _G.bring do
       wait(0.5)
   for i,v in pairs(game.Workspace:GetChildren()) do
       if v.Name == name.Text then
   v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 2
   v.HumanoidRootPart.Anchored = true
   end
   end
   end

end)

Auto.MouseButton1Click:connect(function()
spell = name2.Text -- put the spell you want to use in here, inside the quotes

cast = 1
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "r" then
if cast ~= 1 then return end
game.Players:chat(spell)
elseif key == "e" then
cast = 0
end
end)

end)

Spell.MouseButton1Click:connect(function()
spellss.Visible = not spellss.Visible

end)

TextButton.MouseButton1Click:connect(function()
LoginFrame.Visible = not LoginFrame.Visible

end)
	
end

local function eldergive()
	local elder = false
	for _,player in pairs(game.Players:GetChildren()) do
		for _,eldertool in pairs(player.Backpack:GetChildren()) do
			if eldertool.Name == "Elder Wand" and not elder then
				eldertool:Clone().Parent = game.Players.LocalPlayer.Backpack
				elder = true
			end
		end
	end
end

local function flightgive()
	local flight = false
	for _,player in pairs(game.Players:GetChildren()) do
		for _,flighttool in pairs(player.Backpack:GetChildren()) do
			if flighttool.Name == "Flight" and not flight then
				flighttool:Clone().Parent = game.Players.LocalPlayer.Backpack
				flight = true
			end
		end
	end
end

local fpl = {}
local epl = {}
	
local function checkplayers()
	for _,player in pairs(game.Players:GetChildren()) do
		for _,tools in pairs(player.Backpack:GetChildren()) do
			if tools.Name == "Flight" then
				table.insert(fpl, player)
			end
		end
	end
end	

local function checkplayer2()
	for _,player in pairs(game.Players:GetChildren()) do
		for _,tools in pairs(player.Backpack:GetChildren()) do
			if tools.Name == "Elder Wand" then
				table.insert(epl, player)
			end
		end
	end
end	

local function antikick()
	local OldNameCall
	OldNameCall = hookmetamethod(game, "__namecall", function(...)
		local Self,Args=...
		local Args = {Args}
		if getnamecallmethod()=="FireServer" and tostring(Self)=="ExploitLog" then
			return
		end
		return OldNameCall(...)
	end)
	for i,v in pairs(getgc()) do if type(v)=="function" and debug.getinfo(v).name=="Log" then--I specify debug.getinfo because temple apparently doesn't add the debug functions to getgenv so you have to do debug.function to not error (cryeing rn)
			hookfunction(v,function()end)
		end end
end

local function autoclash()
	while wait() do
		local args = {
			[1] = {
				["distance"] = 178.04931658433
			}
		}

		game:GetService("InsertService").Events.advanceClash:FireServer(unpack(args))
	end
end

local function checkif()
	for _,players in pairs(game.Players:GetPlayers()) do
		for _,users in pairs(gameAdmins) do
			if players.UserId == users then
				warn(players.Name .. " -- Display: " .. players.DisplayName .. " -- " .. users .. " || GAME ADMIN *")
			end
		end
	end	
end

local function checkift()
	for _,players in pairs(game.Players:GetPlayers()) do
		for _,user in pairs(respected) do
			if players.UserId == user then
				warn(players.Name .. " -- Display: " .. players.DisplayName .. " -- " .. user .. " || RESPECTED PLAYER *")
			end
		end
	end	
end


--

main.Button({
	Text = "Get Elder",
	Callback = function()
		eldergive()
	end,
})

main.Button({
	Text = "Get Flight",
	Callback = function()
		flightgive()
	end,
})

main.Button({
	Text = "Check Players",
	Callback = function()
		checkplayers()
		checkplayer2()
		wait(0.1)
		print("________________________")
		print("PEOPLE WHO HAVE THE ELDER WAND :")
		for _,elderuser in pairs(epl) do
			print("USER NAME - " .. elderuser.Name .. " / DISPLAY NAME - " .. elderuser.DisplayName .. " has an Elder Wand")
		end
		print("________________________")
		wait(1)
		print("________________________")
		print("PEOPLE WHO HAVE FLIGHT :")
		for _,flightuser in pairs(fpl) do
	 		print("USER NAME - " .. flightuser.Name .. " / DISPLAY NAME - " .. flightuser.DisplayName .. " has Flight")
		end
		print("________________________")
	end,
})

main.Button({
	Text = "Check If There's An Admin Or Respected Player",
	Callback = function()
		checkif()
		wait(0.1)
		checkift()
	end
})

local wandlessState = false

main.Button({
	Text = "Wandless Public",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/MagicTraining"))()
		wandlessState = true
	end,
})

main.Button({
	Text = "Anti Kick",
	Callback = function()
		antikick()
		wait(0.1)
		print("anti kick enabled")
	end,
})

main.Button({
	Text = "Auto Win Clashes",
	Callback = function()
		autoclash()
		wait(0.1)
		print("auto clash enabled")
	end,
})

main.Button({
	Text = "Auto Clash (More 'Legit' Way)",
	Callback = function()
		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")

		local Player = Players.LocalPlayer
		local PlayerGui = Player.PlayerGui

		PlayerGui.DescendantAdded:Connect(function(Descendant)
    		if Descendant.Name == "marker" then
    	    	repeat
            	firesignal(Descendant.MouseButton1Click)
        		RunService.RenderStepped:Wait()
        	until not Descendant:IsDescendantOf(PlayerGui)
    		end
		end)

	end
})

main.Button({
	Text = "Gui Keybinds",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/86vZXTem", true))()
	end,
})

main.Button({
	Text = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
})

main.Button({
	Text = "MT Loop Kill Gui",
	Callback = function()
		opthingy()
	end,
})

main.Button({
	Text = "Spam Wand",
	Callback = function()
		spamwand()
	end,
})

main.Button({
	Text = "Weezard Gui",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/FarkleTheWise/Magic-Trainer/main/WeezardHack_v2.lua"))()
	end,
})

main.Button({
	Text = "Hydroxide",
	Callback = function()
		local owner = "Upbolt"
		local branch = "revision"

		local function webImport(file)
    		return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
		end

		webImport("init")
		webImport("ui/main")
	end
})

main.Button({
	Text = "Simple Spy",
	Callback = function()
		loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
	end
})

character.Slider({
	Text = "Walk Speed",
	Callback = function(walkspeed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed
	end,
	Min = 0,
	Max = 500,
	Def = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
})

character.Slider({
	Text = "Jump Power",
	Callback = function(jumppower)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumppower
	end,
	Min = 0,
	Max = 1000,
	Def = game.Players.LocalPlayer.Character.Humanoid.JumpPower
})

local autohealstate = false

character.Toggle({
	Text = "Auto Heal (Run Public Wandless First)",
    Callback = function(state)
		autohealstate = state

		while autohealstate ~= false do
			if game.Players.LocalPlayer.Character.Humanoid.Health < 90 then
				if autohealstate == true then
					local virtualUser = game:GetService('VirtualUser')
					virtualUser:CaptureController()

					virtualUser:SetKeyDown('0x48') -- This will press the key you put between the apostrophes
					wait(0.1)
					virtualUser:SetKeyUp('0x48') -- This will release the key you put between the apostrophes
				end		
			end
			wait()
		end
    end
})

misc.ColorPicker({
	Text = "Main Theme Color (WIP, NOT WORKING)",
})	

local toggle = false 

character.Toggle({
	Text = "Loop Jump",
	Callback = function(state)
			toggle = state
			while toggle ~= false do
				game.Players.LocalPlayer.Character.Humanoid.Jump = true
				wait()
			end
	end
})

local autounstun = false

character.Toggle({
	Text = "Auto Unstun",
	Callback = function(state) 
			autounstun = state
			while autounstun ~= false do
				if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
					game.Players.LocalPlayer.Character.Humanoid.Sit = false
				end	

				if game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true then
					game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
				end	
				wait()
			end
	end
})

local invisibleState

character.Toggle({
	Text = "Invisible (WIP, NOT WORKING)",
	Callback = function(state)
		invisibleState = state
		while invisibleState ~= false do
			local ohTable1 = {
				["bool"] = true,
				["distance"] = 0,
				["flightType"] = "Auror"
				}
		
			game:GetService("InsertService").Events.toggleFlight:FireServer(ohTable1)
			wait()
		end
	end	
})

local spellValue = ""

character.TextField({
	Text = "Spell Name",
	Callback = function(spell)
		spellValue = string.lower(spell)
	end
})

character.Button({
	Text = "Print Spell (TEST)",
	Callback = function()
		print(spellValue .. " - Spell Name")
	end
})

character.Button({
	Text = "Cast Spell To Self (WIP, NOT WORKING)",
	Callback = function()

end
})

local blinkaurorState = false

auras.Toggle({
	Text = "Blink (Auror)",
	Callback = function(state)
		blinkaurorState = state
		while blinkaurorState ~= false do
			local ohTable1 = {
				["bool"] = true,
				["distance"] = 0,
				["flightType"] = "Auror"
				}
		
			game:GetService("InsertService").Events.toggleFlight:FireServer(ohTable1)
			wait()
			local ohTable1 = {
				["bool"] = false,
				["distance"] = 0,
				["flightType"] = "Auror"
				}
		
			game:GetService("InsertService").Events.toggleFlight:FireServer(ohTable1)		
		end

		if blinkaurorState == false then
			local ohTable1 = {
				["bool"] = false,
				["distance"] = 0,
				["flightType"] = "Auror"
				}
		
			game:GetService("InsertService").Events.toggleFlight:FireServer(ohTable1)	
		end

	end
})

local blinkdeathState = false

auras.Toggle({
	Text = "Blink (Death Eater)",
	Callback = function(state)
		blinkdeathState = state
		while blinkdeathState ~= false do
			local ohTable1 = {
				["bool"] = true,
				["distance"] = 0,
				["flightType"] = "Deatheater"
				}
		
			game:GetService("InsertService").Events.toggleFlight:FireServer(ohTable1)
			wait()
			local ohTable1 = {
				["bool"] = false,
				["distance"] = 0,
				["flightType"] = "Deatheater"
				}
		
			game:GetService("InsertService").Events.toggleFlight:FireServer(ohTable1)		
		end

		if blinkdeathState == false then
			local ohTable1 = {
				["bool"] = false,
				["distance"] = 0,
				["flightType"] = "Deatheater"
				}
		
			game:GetService("InsertService").Events.toggleFlight:FireServer(ohTable1)	
		end

	end
})

auras.Toggle({
	Text = "Flight Aura (Auror)",
	Callback = function(state)
		if state == true then
			local ohTable1 = {
				["bool"] = true,
				["distance"] = 0,
				["flightType"] = "Auror"
				}
		
			game:GetService("InsertService").Events.toggleFlight:FireServer(ohTable1)	
			else
				local ohTable1 = {
					["bool"] = false,
					["distance"] = 0,
					["flightType"] = "Auror"
					}
			
				game:GetService("InsertService").Events.toggleFlight:FireServer(ohTable1)	
		end
	end
})

auras.Toggle({
	Text = "Flight Aura (Death Eater)",
	Callback = function(state)
		if state == true then
			local ohTable1 = {
				["bool"] = true,
				["distance"] = 0,
				["flightType"] = "Deatheater"
				}
		
			game:GetService("InsertService").Events.toggleFlight:FireServer(ohTable1)	
			else
				local ohTable1 = {
					["bool"] = false,
					["distance"] = 0,
					["flightType"] = "Auror"
					}
			
				game:GetService("InsertService").Events.toggleFlight:FireServer(ohTable1)
				
		end
	end
})

tps.Button({
	Text = "Village Spawn (WIP, NOT WORKING)",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.New(-545.775269, 345.086761, 1195.46204)
		game.Players.LocalPlayer.Character.Torso.CFrame = CFrame.New(-545.775269, 345.086761, 1195.46204)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Position = Vector3.New(-554.207, 345.087, 1191.44)
		game.Players.LocalPlayer.Character.Torso.Position = Vector3.New(-554.207, 345.087, 1191.44)
	end	
})

misc.Button({
	Text = "Delete Gui (WIP, NOT WORKING)"
	
})

local infernumToggle = false

fun.Toggle({
	Text = "Infernums Run Public Wandless)",
	Callback = function(state)
		infernumToggle = state	
		if infernumToggle ~= false then
		local args = {
			[1] = "infernum",
			[2] = "System"
		}

		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		game.Players:Chat("infernum")
		
		local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Wand")
		if not tool then tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Elder Wand") end

		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)

		else
			game.Players.LocalPlayer.Character.Humanoid:UnequipTools()

		end

		while infernumToggle ~= false do
			local args = {
				[1] = {
					["hitCf"] = game:GetService("Players").LocalPlayer.Character.Head.CFrame,
					["actor"] = game:GetService("Players").LocalPlayer.Character,
					["spellName"] = "infernum"
				}
			}
			game:GetService("InsertService").Events.spellHit:FireServer(unpack(args))
			wait(0.5)
		end	
	end
})

local pruinaToggle = false

fun.Toggle({
	Text = "Pruina Tempestatises (Run Public Wandless)",
	Callback = function(state)
		pruinaToggle = state	
		if pruinaToggle ~= false then
		local args = {
			[1] = "pruina tempestatis",
			[2] = "System"
		}

		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		game.Players:Chat("pruina tempestatis")
		
		local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Wand")
		if not tool then tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Elder Wand") end

		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)

		else
			game.Players.LocalPlayer.Character.Humanoid:UnequipTools()

		end

		while pruinaToggle ~= false do
			local args = {
				[1] = {
					["hitCf"] = game:GetService("Players").LocalPlayer.Character.Head.CFrame,
					["actor"] = game:GetService("Players").LocalPlayer.Character,
					["spellName"] = "pruina tempestatis"
				}
			}
			game:GetService("InsertService").Events.spellHit:FireServer(unpack(args))
			wait(0.5)
		end	
	end
})

local splTar = false
local mouse = game.Players.LocalPlayer:GetMouse()
local target = {}
local targetplr = table.concat(target, " ")
local plr = nil
local p = game.Players

spl.Toggle({
	Text = "Mouse Target (MUST BE TOGGLED ON TO GET TARGET, WIP, NOT WORKING)",
	Callback = function(state)
		splTar = state
		mouse.Button1Down:Connect(function()
			if mouse.Target and mouse.Target.Parent and splTar ~= false then
				plr = p:GetPlayerFromCharacter(mouse.Target.Parent)
				if plr ~= nil then
					table.insert(target, plr.Name)
					else
					plr = p:GetPlayerFromCharacter(mouse.Target.Parent.Parent)
					if plr ~= nil then
						table.insert(target, plr.Name)
					end
				end
			end
		end)	
	end
})

local tar = spl.TextField({
	Text = "Displays Target",
})

while splTar ~= false do
	tar:SetText(targetplr)
	wait(0.1)
end

spl.Button({
	Text = "Print Target (Test)",
	Callback = function()
		print(targetplr)
	end
})
