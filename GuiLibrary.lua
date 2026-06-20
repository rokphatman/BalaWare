if shared.VapeExecuted then
	local VERSION = "4.10"..(shared.VapePrivate and " PRIVATE" or "").." "..readfile("vape/commithash.txt"):sub(1, 6)
	local baseDirectory = (shared.VapePrivate and "vapeprivate/" or "vape/")
	local vapeAssetTable = {
		["vape/assets/AddItem.png"] = "rbxassetid://13350763121",
		["vape/assets/AddRemoveIcon1.png"] = "rbxassetid://13350764147",
		["vape/assets/ArrowIndicator.png"] = "rbxassetid://13350766521",
		["vape/assets/BackIcon.png"] = "rbxassetid://13350767223",
		["vape/assets/BindBackground.png"] = "rbxassetid://13350767577",
		["vape/assets/BlatantIcon.png"] = "rbxassetid://13350767943",
		["vape/assets/CircleListBlacklist.png"] = "rbxassetid://13350768647",
		["vape/assets/CircleListWhitelist.png"] = "rbxassetid://13350769066",
		["vape/assets/ColorSlider1.png"] = "rbxassetid://13350769439",
		["vape/assets/ColorSlider2.png"] = "rbxassetid://13350769842",
		["vape/assets/CombatIcon.png"] = "rbxassetid://13350770192",
		["vape/assets/DownArrow.png"] = "rbxassetid://13350770749",
		["vape/assets/DiscordIcon.png"] = "rbxassetid://13546311177",
		["vape/assets/ExitIcon1.png"] = "rbxassetid://13350771140",
		["vape/assets/FriendsIcon.png"] = "rbxassetid://13350771464",
		["vape/assets/HoverArrow.png"] = "rbxassetid://13350772201",
		["vape/assets/HoverArrow2.png"] = "rbxassetid://13350772588",
		["vape/assets/HoverArrow3.png"] = "rbxassetid://13350773014",
		["vape/assets/HoverArrow4.png"] = "rbxassetid://13350773643",
		["vape/assets/InfoNotification.png"] = "rbxassetid://13350774006",
		["vape/assets/KeybindIcon.png"] = "rbxassetid://13350774323",
		["vape/assets/LegitModeIcon.png"] = "rbxassetid://13436400428",
		["vape/assets/MoreButton1.png"] = "rbxassetid://13350775005",
		["vape/assets/MoreButton2.png"] = "rbxassetid://13350775731",
		["vape/assets/MoreButton3.png"] = "rbxassetid://13350776241",
		["vape/assets/NotificationBackground.png"] = "rbxassetid://13350776706",
		["vape/assets/NotificationBar.png"] = "rbxassetid://13350777235",
		["vape/assets/OnlineProfilesButton.png"] = "rbxassetid://13350777717",
		["vape/assets/PencilIcon.png"] = "rbxassetid://13350778187",
		["vape/assets/PinButton.png"] = "rbxassetid://13350778654",
		["vape/assets/ProfilesIcon.png"] = "rbxassetid://13350779149",
		["vape/assets/RadarIcon1.png"] = "rbxassetid://13350779545",
		["vape/assets/RadarIcon2.png"] = "rbxassetid://13350779992",
		["vape/assets/RainbowIcon1.png"] = "rbxassetid://13350780571",
		["vape/assets/RainbowIcon2.png"] = "rbxassetid://13350780993",
		["vape/assets/RightArrow.png"] = "rbxassetid://13350781908",
		["vape/assets/SearchBarIcon.png"] = "rbxassetid://13350782420",
		["vape/assets/SettingsWheel1.png"] = "rbxassetid://13350782848",
		["vape/assets/SettingsWheel2.png"] = "rbxassetid://13350783258",
		["vape/assets/SliderArrow1.png"] = "rbxassetid://13350783794",
		["vape/assets/SliderArrowSeperator.png"] = "rbxassetid://13350784477",
		["vape/assets/SliderButton1.png"] = "rbxassetid://13350785680",
		["vape/assets/TargetIcon.png"] = "rbxassetid://13350786128",
		["vape/assets/TargetIcon1.png"] = "rbxassetid://13350786776",
		["vape/assets/TargetIcon2.png"] = "rbxassetid://13350787228",
		["vape/assets/TargetIcon3.png"] = "rbxassetid://13350787729",
		["vape/assets/TargetIcon4.png"] = "rbxassetid://13350788379",
		["vape/assets/TargetInfoIcon1.png"] = "rbxassetid://13350788860",
		["vape/assets/TargetInfoIcon2.png"] = "rbxassetid://13350789239",
		["vape/assets/TextBoxBKG.png"] = "rbxassetid://13350789732",
		["vape/assets/TextBoxBKG2.png"] = "rbxassetid://13350790229",
		["vape/assets/TextGUIIcon1.png"] = "rbxassetid://13350790634",
		["vape/assets/TextGUIIcon2.png"] = "rbxassetid://13350791175",
		["vape/assets/TextGUIIcon3.png"] = "rbxassetid://13350791758",
		["vape/assets/TextGUIIcon4.png"] = "rbxassetid://13350792279",
		["vape/assets/ToggleArrow.png"] = "rbxassetid://13350792786",
		["vape/assets/UpArrow.png"] = "rbxassetid://13350793386",
		["vape/assets/UtilityIcon.png"] = "rbxassetid://13350793918",
		["vape/assets/WarningNotification.png"] = "rbxassetid://13350794868",
		["vape/assets/WindowBlur.png"] = "rbxassetid://13350795660",
		["vape/assets/WorldIcon.png"] = "rbxassetid://13350796199",
		["vape/assets/VapeIcon.png"] = "rbxassetid://13350808582",
		["vape/assets/RenderIcon.png"] = "rbxassetid://13350832775",
		["vape/assets/VapeLogo1.png"] = "rbxassetid://13350860863",
		["vape/assets/VapeLogo3.png"] = "rbxassetid://13350872035",
		["vape/assets/VapeLogo2.png"] = "rbxassetid://13350876307",
		["vape/assets/VapeLogo4.png"] = "rbxassetid://13350877564"
	}
	local getcustomasset = getsynasset or getcustomasset or function(location) return vapeAssetTable[location] or "" end
	local customassetcheck = (getsynasset or getcustomasset) and true
	local requestfunc = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request or function() end 
	local isfile = isfile or function(file)
		local suc, res = pcall(function() return readfile(file) end)
		return suc and res ~= nil
	end
	local loadedsuccessfully = false
	local GuiLibrary = {
		Settings = {},
		Profiles = {
			default = {Keybind = "", Selected = true}
		},
		RainbowSpeed = 0.6,
		GUIKeybind = "RightShift",
		CurrentProfile = "default",
		KeybindCaptured = false,
		PressedKeybindKey = "",
		ToggleNotifications = false,
		Notifications = false,
		ToggleTooltips = false,
		ObjectsThatCanBeSaved = {["Gui ColorSliderColor"] = {Api = {Hue = 0.44, Sat = 1, Value = 1}}},
		MobileButtons = {},
		RainbowSliders = {}
	}
	local runService = game:GetService("RunService")
	local inputService = game:GetService("UserInputService")
	local httpService = game:GetService("HttpService")
	local tweenService = game:GetService("TweenService")
	local guiService = game:GetService("GuiService")
	local textService = game:GetService("TextService")
	local translations = shared.VapeTranslation or {}
	local translatedlogo = false

	GuiLibrary.ColorStepped = runService.RenderStepped:Connect(function()
		local col = (tick() * 0.25 * GuiLibrary.RainbowSpeed) % 1 
		for i, v in pairs(GuiLibrary.RainbowSliders) do 
			v.SetValue(col)
		end
	end)

	local function randomString()
		local randomlength = math.random(10,100)
		local array = {}

		for i = 1, randomlength do
			array[i] = string.char(math.random(32, 126))
		end

		return table.concat(array)
	end

	local function RelativeXY(GuiObject, location)
		local x, y = location.X - GuiObject.AbsolutePosition.X, location.Y - GuiObject.AbsolutePosition.Y
		local x2 = 0
		local xm, ym = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
		x2 = math.clamp(x, 4, xm - 6)
		x = math.clamp(x, 0, xm)
		y = math.clamp(y, 0, ym)
		return x, y, x/xm, y/ym, x2/xm
	end

	local gui = Instance.new("ScreenGui")
	gui.Name = randomString()
	gui.DisplayOrder = math.huge
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	gui.OnTopOfCoreBlur = true
	if gethui and true == false then
		print("gethui()")
		gui.Parent = gethui()
	elseif not is_sirhurt_closure and syn and syn.protect_gui then
		print("syn.protect_gui()")
		syn.protect_gui(gui)
		gui.Parent = game:GetService("CoreGui")
	elseif IsElectron then
		print("Parent = coreGui")
		gui.Parent = game:GetService("CoreGui")
	else -- we love the new context system
		local git = {cache = {}}
		git.getCommit = function(user, repo)
			if git.cache[user..repo] then
				return git.cache[user..repo]
			end
			local commit
			local crequest = game:HttpGet(string.format("https://api.github.com/repos/%s/%s/commits", user, repo), true)
			if crequest.StatusCode == 200 then
				local decoded = game:GetService("HttpService"):JSONDecode(crequest.Body)
				commit = decoded[1].sha
				git.cache[user..repo] = commit
			end
			if not commit then
				task.wait(1)
				commit = git.getCommit(user, repo)
			end
			return commit
		end

		git.request = function(user, repo, file)
			local commit = git.getCommit(user, repo)
			return game:HttpGet(string.format("https://raw.githubusercontent.com/%s/%s/blob/%s/%s", user, repo, commit, file), true)
		end

		local function thisWasSkiddedByScrxpted(scripturl)
			if not isfile("vape/"..scripturl) then
				local suc, res = pcall(function() return git.request("supercellgamer", "Pistonware", scripturl) end)
				assert(suc, res)
				assert(res ~= "404: Not Found", res)
				--[=[ I'm removing this because it isn't needed for my stuff scripturl:find(".lua") then res = "--This watermark is used to delete the file if its cached, remove it to make the file persist after commits.\n"..res end ]=]
				writefile("vape/"..scripturl, res)
			end
			return readfile("vape/"..scripturl)
		end
		loadstring(thisWasSkiddedByScrxpted("Libraries/IrisInstanceProtect.lua"))() -- protect instance shit
		gui.ResetOnSpawn = false
		protect_instance(gui)
		gui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
	end
	GuiLibrary["MainGui"] = gui

	local vapeCachedAssets = {}
	local function vapeGithubRequest(scripturl)
		if not isfile("vape/"..scripturl) then
			local suc, res = pcall(function() return game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Pistonware/"..readfile("vape/commithash.txt").."/"..scripturl, true) end)
			assert(suc, res)
			assert(res ~= "404: Not Found", res)
			if scripturl:find(".lua") then res = "--This watermark is used to delete the file if its cached, remove it to make the file persist after commits.\n"..res end
			writefile("vape/"..scripturl, res)
		end
		return readfile("vape/"..scripturl)
	end
	
	local function downloadVapeAsset(path)
		if customassetcheck then
			if not isfile(path) then
				task.spawn(function()
					local textlabel = Instance.new("TextLabel")
					textlabel.Size = UDim2.new(1, 0, 0, 36)
					textlabel.Text = "Downloading "..path
					textlabel.BackgroundTransparency = 1
					textlabel.TextStrokeTransparency = 0
					textlabel.TextSize = 30
					textlabel.Font = Enum.Font.SourceSans
					textlabel.TextColor3 = Color3.new(1, 1, 1)
					textlabel.Position = UDim2.new(0, 0, 0, -36)
					textlabel.Parent = GuiLibrary.MainGui
					repeat task.wait() until isfile(path)
					textlabel:Destroy()
				end)
				local suc, req = pcall(function() return vapeGithubRequest(path:gsub("vape/assets", "assets")) end)
				if suc and req then
					writefile(path, req)
				else
					return ""
				end
			end
		end
		if not vapeCachedAssets[path] then vapeCachedAssets[path] = getcustomasset(path) end
		return vapeCachedAssets[path] 
	end

	GuiLibrary["UpdateHudEvent"] = Instance.new("BindableEvent")
	GuiLibrary["SelfDestructEvent"] = Instance.new("BindableEvent")
	GuiLibrary["LoadSettingsEvent"] = Instance.new("BindableEvent")

	local scaledgui = Instance.new("Frame")
	scaledgui.Name = "ScaledGui"
	scaledgui.Size = UDim2.new(1, 0, 1, 0)
	scaledgui.BackgroundTransparency = 1
	scaledgui.Parent = GuiLibrary["MainGui"]
	local clickgui = Instance.new("Frame")
	clickgui.Name = "ClickGui"
	clickgui.Size = UDim2.new(1, 0, 1, 0)
	clickgui.BackgroundTransparency = 1
	clickgui.BorderSizePixel = 0
	clickgui.BackgroundColor3 = Color3.fromRGB(79, 83, 166)
	clickgui.Visible = false
	clickgui.Parent = scaledgui
	local searchbarmain = Instance.new("Frame")
	searchbarmain.Size = UDim2.new(0, 220, 0, 37)
	searchbarmain.Position = UDim2.new(0.5, -110, 0, -23)
	searchbarmain.ClipsDescendants = false
	searchbarmain.ZIndex = 10
	searchbarmain.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	searchbarmain.Name = "SearchBar"
	searchbarmain.Parent = clickgui
	local searchbarchildren = Instance.new("Frame")
	searchbarchildren.Size = UDim2.new(1, 0, 1, -37)
	searchbarchildren.Position = UDim2.new(0, 0, 0, 37)
	searchbarchildren.BackgroundTransparency = 1
	searchbarchildren.ZIndex = 10
	searchbarchildren.Parent = searchbarmain
	local searchbaricon = Instance.new("ImageLabel")
	searchbaricon.BackgroundTransparency = 1
	searchbaricon.ZIndex = 10
	searchbaricon.Image = downloadVapeAsset("vape/assets/SearchBarIcon.png")
	searchbaricon.Size = UDim2.new(0, 14, 0, 14)
	searchbaricon.Position = UDim2.new(1, -32, 0, 10)
	searchbaricon.Parent = searchbarmain
	local searchbar = Instance.new("TextBox")
	searchbar.PlaceholderText = ""
	searchbar.Text = ""
	searchbar.ZIndex = 10
	searchbar.TextColor3 = Color3.fromRGB(121, 121, 121)
	searchbar.Size = UDim2.new(1, -56, 0, 37)
	searchbar.Font = Enum.Font.Gotham
	searchbar.TextXAlignment = Enum.TextXAlignment.Left
	searchbar.TextSize = 15
	searchbar.Position = UDim2.new(0, 56, 0, 0)
	searchbar.BackgroundTransparency = 1
	searchbar.Parent = searchbarmain
	local searchbarshadow = Instance.new("ImageLabel")
	searchbarshadow.AnchorPoint = Vector2.new(0.5, 0.5)
	searchbarshadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	searchbarshadow.Image = downloadVapeAsset("vape/assets/WindowBlur.png")
	searchbarshadow.BackgroundTransparency = 1
	searchbarshadow.ZIndex = -1
	searchbarshadow.Size = UDim2.new(1, 6, 1, 6)
	searchbarshadow.ImageColor3 = Color3.new(0, 0, 0)
	searchbarshadow.ScaleType = Enum.ScaleType.Slice
	searchbarshadow.SliceCenter = Rect.new(10, 10, 118, 118)
	searchbarshadow.Parent = searchbarmain
	local searchbarround = Instance.new("UICorner")
	searchbarround.CornerRadius = UDim.new(0, 5)
	searchbarround.Parent = searchbarmain
	local searchbaricon2 = Instance.new("ImageButton")
	searchbaricon2.Size = UDim2.new(0, 29, 0, 16)
	searchbaricon2.AutoButtonColor = false
	searchbaricon2.Image = downloadVapeAsset("vape/assets/LegitModeIcon.png")
	searchbaricon2.BackgroundTransparency = 1
	searchbaricon2.Name = "LegitMode"
	searchbaricon2.ZIndex = 10
	searchbaricon2.Position = UDim2.new(0, 8, 0, 11)
	searchbaricon2.Parent = searchbarmain
	local searchbarborder = Instance.new("Frame")
	searchbarborder.Size = UDim2.new(0, 2, 0, 12)
	searchbarborder.BorderSizePixel = 0
	searchbarborder.ZIndex = 10
	searchbarborder.Position = UDim2.new(0, 43, 0, 13)
	searchbarborder.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
	searchbarborder.Parent = searchbarmain
	local OnlineProfilesBigFrame = Instance.new("Frame")
	OnlineProfilesBigFrame.Size = UDim2.new(1, 0, 1, 0)
	OnlineProfilesBigFrame.Name = "OnlineProfiles"
	OnlineProfilesBigFrame.BackgroundTransparency = 1
	OnlineProfilesBigFrame.Visible = false
	OnlineProfilesBigFrame.Parent = scaledgui
	local legitgui = Instance.new("Frame")
	legitgui.Name = "LegitGui"
	legitgui.Size = UDim2.new(1, 0, 1, 0)
	legitgui.BackgroundTransparency = 1
	legitgui.Visible = true
	legitgui.Parent = scaledgui
	local LegitModulesBigFrame = Instance.new("Frame")
	LegitModulesBigFrame.Size = UDim2.new(1, 0, 1, 0)
	LegitModulesBigFrame.Name = "LegitModules"
	LegitModulesBigFrame.BackgroundTransparency = 1
	LegitModulesBigFrame.Visible = false
	LegitModulesBigFrame.Parent = scaledgui
	local LegitModulesFrame = Instance.new("Frame")
	LegitModulesFrame.Size = UDim2.new(0, 700, 0, 389)
	LegitModulesFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	LegitModulesFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	LegitModulesFrame.BackgroundColor3 = Color3.fromRGB(26, 25, 26)
	LegitModulesFrame.Parent = LegitModulesBigFrame
	local LegitModulesExitButton = Instance.new("ImageButton")
	LegitModulesExitButton.Name = "LegitModulesExitButton"
	LegitModulesExitButton.ImageColor3 = Color3.fromRGB(121, 121, 121)
	LegitModulesExitButton.Size = UDim2.new(0, 24, 0, 24)
	LegitModulesExitButton.AutoButtonColor = false
	LegitModulesExitButton.Image = downloadVapeAsset("vape/assets/ExitIcon1.png")
	LegitModulesExitButton.Visible = true
	LegitModulesExitButton.Position = UDim2.new(1, -31, 0, 8)
	LegitModulesExitButton.BackgroundColor3 = Color3.fromRGB(26, 25, 26)
	LegitModulesExitButton.Parent = LegitModulesFrame
	LegitModulesExitButton.MouseButton1Click:Connect(function()
		LegitModulesBigFrame.Visible = false
		clickgui.Visible = true
		legitgui.Visible = not clickgui.Visible
		for i, v in pairs(legitgui:GetChildren()) do 
			if v:IsA("Frame") then v.BackgroundTransparency = legitgui.Visible and 0.8 or 1 end
		end
	end)
	local LegitModulesExitButtonround = Instance.new("UICorner")
	LegitModulesExitButtonround.CornerRadius = UDim.new(0, 16)
	LegitModulesExitButtonround.Parent = LegitModulesExitButton
	LegitModulesExitButton.MouseEnter:Connect(function()
		game:GetService("TweenService"):Create(LegitModulesExitButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(60, 60, 60), ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
	end)
	LegitModulesExitButton.MouseLeave:Connect(function()
		game:GetService("TweenService"):Create(LegitModulesExitButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(26, 25, 26), ImageColor3 = Color3.fromRGB(121, 121, 121)}):Play()
	end)
	local LegitModulesFrameShadow = Instance.new("ImageLabel")
	LegitModulesFrameShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	LegitModulesFrameShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	LegitModulesFrameShadow.Image = downloadVapeAsset("vape/assets/WindowBlur.png")
	LegitModulesFrameShadow.BackgroundTransparency = 1
	LegitModulesFrameShadow.ZIndex = -1
	LegitModulesFrameShadow.Size = UDim2.new(1, 6, 1, 6)
	LegitModulesFrameShadow.ImageColor3 = Color3.new()
	LegitModulesFrameShadow.ScaleType = Enum.ScaleType.Slice
	LegitModulesFrameShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	LegitModulesFrameShadow.Parent = LegitModulesFrame
	local LegitModulesFrameIcon = Instance.new("ImageLabel")
	LegitModulesFrameIcon.Size = UDim2.new(0, 19, 0, 16)
	LegitModulesFrameIcon.Image = downloadVapeAsset("vape/assets/ProfilesIcon.png")
	LegitModulesFrameIcon.Name = "WindowIcon"
	LegitModulesFrameIcon.BackgroundTransparency = 1
	LegitModulesFrameIcon.Position = UDim2.new(0, 10, 0, 13)
	LegitModulesFrameIcon.ImageColor3 = Color3.fromRGB(200, 200, 200)
	LegitModulesFrameIcon.Parent = LegitModulesFrame
	local LegitModulesList = Instance.new("ScrollingFrame")
	LegitModulesList.BackgroundTransparency = 1
	LegitModulesList.Size = UDim2.new(0, 700, 0, 294)
	LegitModulesList.Position = UDim2.new(0, 14, 0, 81)
	LegitModulesList.CanvasSize = UDim2.new(0, 700, 0, 294)
	LegitModulesList.Parent = LegitModulesFrame
	local LegitModulesListGrid = Instance.new("UIGridLayout")
	LegitModulesListGrid.CellSize = UDim2.new(0, 163, 0, 114)
	LegitModulesListGrid.CellPadding = UDim2.new(0, 6, 0, 6)
	LegitModulesListGrid.Parent = LegitModulesList
	local LegitModulesFrameCorner = Instance.new("UICorner")
	LegitModulesFrameCorner.CornerRadius = UDim.new(0, 4)
	LegitModulesFrameCorner.Parent = LegitModulesFrame
	local notificationwindow = Instance.new("Frame")
	notificationwindow.BackgroundTransparency = 1
	notificationwindow.Active = false
	notificationwindow.Size = UDim2.new(1, 0, 1, 0)
	notificationwindow.Parent = GuiLibrary["MainGui"]
	local hoverbox = Instance.new("TextLabel")
	hoverbox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	hoverbox.Active = false
	hoverbox.Text = "  ".."Placeholder"
	hoverbox.ZIndex = 11
	hoverbox.TextColor3 = Color3.fromRGB(160, 160, 160)
	hoverbox.Font = Enum.Font.Arial
	hoverbox.TextXAlignment = Enum.TextXAlignment.Left
	hoverbox.TextSize = 14
	hoverbox.Visible = false
	hoverbox.Parent = clickgui
	local hoverround = Instance.new("UICorner")
	hoverround.CornerRadius = UDim.new(0, 5)
	hoverround.Parent = hoverbox
	local hoverbox2 = hoverbox:Clone()
	hoverbox2.ZIndex = -1
	hoverbox2.Size = UDim2.new(1, 2, 1, 2)
	hoverbox2.Text = ""
	hoverbox2.Visible = true
	hoverbox2.BackgroundColor3 = Color3.fromRGB(32, 35, 36)
	hoverbox2.Position = UDim2.new(0, -1, 0, -1)
	hoverbox2.Parent = hoverbox
	local hoverboxshadow = Instance.new("ImageLabel")
	hoverboxshadow.AnchorPoint = Vector2.new(0.5, 0.5)
	hoverboxshadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	hoverboxshadow.Image = downloadVapeAsset("vape/assets/WindowBlur.png")
	hoverboxshadow.BackgroundTransparency = 1
	hoverboxshadow.ZIndex = -1
	hoverboxshadow.Visible = true
	hoverboxshadow.Size = UDim2.new(1, 6, 1, 6)
	hoverboxshadow.ImageColor3 = Color3.new(0, 0, 0)
	hoverboxshadow.ScaleType = Enum.ScaleType.Slice
	hoverboxshadow.SliceCente
