-- (VOID) : Gui to Lua
-- Version: 1.4

-- Instances:

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local OreListGui = Instance.new("ScreenGui")
local ToggleBtn = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local MainPanel = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIStroke_2 = Instance.new("UIStroke")
local Header = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local HeaderCover = Instance.new("Frame")
local HeaderLabel = Instance.new("TextLabel")
local CloseBtn = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local OreScroll = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local Template = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local OreName = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local Depth = Instance.new("TextLabel")
local UIStroke_3 = Instance.new("UIStroke")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_6 = Instance.new("UICorner")
local UIStroke_4 = Instance.new("UIStroke")
local Search = Instance.new("TextBox")
local UICorner_7 = Instance.new("UICorner")

--Properties:

OreListGui.Name = "OreListGui"
OreListGui.Parent = game:GetService("CoreGui")
OreListGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OreListGui.ResetOnSpawn = false

ToggleBtn.Name = "ToggleBtn"
ToggleBtn.Parent = OreListGui
ToggleBtn.AnchorPoint = Vector2.new(0, 0.5)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
ToggleBtn.BackgroundTransparency = 0.100
ToggleBtn.Position = UDim2.new(0, 20, 0.899999976, -20)
ToggleBtn.Size = UDim2.new(0, 140, 0, 40)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.Text = "Ore List"
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.TextSize = 16.000

UICorner.Parent = ToggleBtn

UIStroke.Color = Color3.fromRGB(80, 80, 100)
UIStroke.Thickness = 2.000
UIStroke.Parent = ToggleBtn

MainPanel.Name = "MainPanel"
MainPanel.Parent = OreListGui
MainPanel.AnchorPoint = Vector2.new(0, 0.5)
MainPanel.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
MainPanel.BackgroundTransparency = 0.050
MainPanel.Position = UDim2.new(0, 20, 0.870000005, -230)
MainPanel.Size = UDim2.new(0, 360, 0, 460)

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = MainPanel

UIStroke_2.Color = Color3.fromRGB(70, 70, 90)
UIStroke_2.Thickness = 2.000
UIStroke_2.Parent = MainPanel

Header.Name = "Header"
Header.Parent = MainPanel
Header.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
Header.BorderSizePixel = 0
Header.Size = UDim2.new(1, 0, 0, 44)

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = Header

HeaderCover.Name = "HeaderCover"
HeaderCover.Parent = Header
HeaderCover.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
HeaderCover.BorderSizePixel = 0
HeaderCover.Position = UDim2.new(0, 0, 1, -12)
HeaderCover.Size = UDim2.new(1, 0, 0, 12)

HeaderLabel.Name = "HeaderLabel"
HeaderLabel.Parent = Header
HeaderLabel.BackgroundTransparency = 1.000
HeaderLabel.Position = UDim2.new(0, 20, 0, 0)
HeaderLabel.Size = UDim2.new(1, -20, 1, 0)
HeaderLabel.Font = Enum.Font.GothamBold
HeaderLabel.Text = "Ore List"
HeaderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
HeaderLabel.TextSize = 20.000
HeaderLabel.TextXAlignment = Enum.TextXAlignment.Left

CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = Header
CloseBtn.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
CloseBtn.Position = UDim2.new(1, -38, 0, 7)
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.TextSize = 16.000

UICorner_4.CornerRadius = UDim.new(0, 6)
UICorner_4.Parent = CloseBtn

OreScroll.Name = "OreScroll"
OreScroll.Parent = MainPanel
OreScroll.AnchorPoint = Vector2.new(0, 1)
OreScroll.BackgroundTransparency = 1.000
OreScroll.Position = UDim2.new(0, 0, 1, 0)
OreScroll.Size = UDim2.new(1, 0, 1, -84)
OreScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
OreScroll.ScrollBarThickness = 6
OreScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y

UIListLayout.Parent = OreScroll
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

UIPadding.Parent = OreScroll
UIPadding.PaddingBottom = UDim.new(0, 10)
UIPadding.PaddingLeft = UDim.new(0, 10)
UIPadding.PaddingRight = UDim.new(0, 10)
UIPadding.PaddingTop = UDim.new(0, 10)

Template.Name = "Template"
Template.Parent = OreScroll
Template.BackgroundColor3 = Color3.fromRGB(35, 38, 48)
Template.Size = UDim2.new(1, -6, 0, 72)
Template.Visible = false
Template.Text = ""

UICorner_5.Parent = Template

OreName.Name = "OreName"
OreName.Parent = Template
OreName.BackgroundTransparency = 1.000
OreName.Position = UDim2.new(0, 64, 0, 8)
OreName.Size = UDim2.new(1, -70, 0, 24)
OreName.Font = Enum.Font.GothamBold
OreName.Text = "Azure"
OreName.TextColor3 = Color3.fromRGB(255, 255, 255)
OreName.TextSize = 16.000
OreName.TextXAlignment = Enum.TextXAlignment.Left

Info.Name = "Info"
Info.Parent = Template
Info.BackgroundTransparency = 1.000
Info.Position = UDim2.new(0, 64, 0, 32)
Info.Size = UDim2.new(1, -70, 0, 18)
Info.Font = Enum.Font.Gotham
Info.Text = "Str: 250  |  XP: 25000  |  Coins: 500"
Info.TextColor3 = Color3.fromRGB(180, 180, 200)
Info.TextSize = 13.000
Info.TextXAlignment = Enum.TextXAlignment.Left

Depth.Name = "Depth"
Depth.Parent = Template
Depth.BackgroundTransparency = 1.000
Depth.Position = UDim2.new(0, 64, 0, 50)
Depth.Size = UDim2.new(1, -70, 0, 18)
Depth.Font = Enum.Font.Gotham
Depth.Text = "Depth: 1400 - 2000"
Depth.TextColor3 = Color3.fromRGB(160, 160, 180)
Depth.TextSize = 13.000
Depth.TextXAlignment = Enum.TextXAlignment.Left

UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_3.Color = Color3.fromRGB(85, 255, 127)
UIStroke_3.Thickness = 3.000
UIStroke_3.Parent = Template

ImageLabel.Parent = Template
ImageLabel.Position = UDim2.new(0, 10, 0.5, -22)
ImageLabel.Size = UDim2.new(0, 44, 0, 44)
ImageLabel.Image = "rbxassetid://431189691"

UICorner_6.CornerRadius = UDim.new(0, 6)
UICorner_6.Parent = ImageLabel

UIStroke_4.Color = Color3.fromRGB(100, 100, 120)
UIStroke_4.Thickness = 1.500
UIStroke_4.Parent = ImageLabel

Search.Name = "Search"
Search.Parent = MainPanel
Search.AnchorPoint = Vector2.new(0.5, 0)
Search.BackgroundColor3 = Color3.fromRGB(42, 53, 66)
Search.BorderColor3 = Color3.fromRGB(0, 0, 0)
Search.BorderSizePixel = 0
Search.Position = UDim2.new(0.5, 0, 0, 47)
Search.Size = UDim2.new(1, -30, 0, 35)
Search.Font = Enum.Font.SourceSansBold
Search.PlaceholderText = "Search"
Search.Text = ""
Search.TextColor3 = Color3.fromRGB(255, 255, 255)
Search.TextScaled = true
Search.TextSize = 14.000
Search.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 12)
UICorner_7.Parent = Search


for i,v in game.Workspace.Tycoons:GetChildren() do
	if not v.Owner.Value then continue end 
	if v.Owner.Value.Name == LocalPlayer.Name then
		if v.Items.Tunnel:FindFirstChild("Model") then
			v.Items.Tunnel:FindFirstChild("Model"):Destroy()
		end
	end
end

local ores = game.ReplicatedStorage:WaitForChild("Ores"):GetChildren()
print("Begin")
local Toggles = {

}

local function SetupOres()
	for i,v in ores do
		if v.Name == "Stone" then continue end
		Toggles[v.Name] = false
	end
end
SetupOres()
wait(0.1)
local function LoadButtons()

	for i, ore in pairs(ores) do
		if Toggles[ore.Name] == nil then continue end 
		print("Loading ",ore.Name)
		local button = Template:Clone()
		button.Name = ore.Name
		button.OreName.Text = ore.Name
		button.Visible = true
		if ore:IsA("Model") then 
			print("Is Model")
			button.LayoutOrder = 10000
		elseif ore:FindFirstChild("MaxRarity") and ore:FindFirstChild("MaxRarity").Value == 0 and ore:FindFirstChild("MinRarity").Value == 0 then
			print("Hiding",button.Name)
			button.Visible = false
			Instance.new("BoolValue",button).Name = "Hide"
		elseif ore:FindFirstChild("MaxDepth") and ore:FindFirstChild("MaxDepth").Value < 5880 then
			print("Is in minable area")
			button.LayoutOrder = ore:FindFirstChild("MaxDepth").Value
		elseif ore:FindFirstChild("MaxDepth") and ore:FindFirstChild("MaxDepth").Value > 5879 then
			print("Is too deep")
			button.LayoutOrder = 100000
		
		else
			print("Yeet")
			button.LayoutOrder = 100000+1
		end
		local Info   = ""
		if ore:FindFirstChild("Strength") then
			print("Has str")
			Info = "Str: "..ore:FindFirstChild("Strength").Value
		end
		if ore:FindFirstChild("XP") then 
			if Info ~= "" then
				Info = Info .. " | " 
			end
			Info = Info.. "XP: "..ore:FindFirstChild("XP").Value
		end
		if ore:FindFirstChild("CoinValue") then 
			if Info ~= "" then
				Info = Info .. " | " 
			end
			Info =Info .. "Coins: "..ore:FindFirstChild("CoinValue").Value
		end
		local OreStats = ""
		if ore:FindFirstChild("MinDepth") then
			OreStats = "Depth: "..ore:FindFirstChild("MinDepth").Value .. " - " .. ore:FindFirstChild("MaxDepth").Value 
		end
		if ore:FindFirstChild("MinRarity") then
			OreStats =  OreStats.. " | Rarity: "..ore:FindFirstChild("MinRarity").Value .. " - " .. ore:FindFirstChild("MaxRarity").Value 
		end
		button.Info.Text = Info
		button.Depth.Text = OreStats
		local Image 
		if ore:FindFirstChild("Decal") then 
			Image = ore:FindFirstChild("Decal").Texture	
		elseif ore:FindFirstChild("Thumbnail") then
			Image = ore:FindFirstChild("Thumbnail").Value
		else
			Image = ""
		end
		button.ImageLabel.Image = Image
		button.Parent = OreScroll
	end
end
LoadButtons()
wait(0.5)
local DEFAULT_COLOR = Color3.fromRGB(200, 200, 200)

local EspFolder = Workspace:FindFirstChild("ESP_Container") or Instance.new("Folder")
EspFolder.Name = "ESP_Container"
EspFolder.Parent = Workspace

local OreModels = {}      -- Stores [OreName] = ModelInstance
local Highlights = {}     -- Stores [OreName] = HighlightInstance
local TrackedCopies = {}  -- Stores [RealOre] = FakeCopy
local Tasks = {}
local mineFolder = nil    -- Forward declaration, assigned in section 6

for oreName, _ in pairs(Toggles) do
	local RealOre = game.ReplicatedStorage.Ores:FindFirstChild(oreName)
	if (RealOre:FindFirstChild("MaxRarity") and RealOre:FindFirstChild("MinRarity") and RealOre.MaxRarity.Value == 0 and RealOre.MinRarity.Value == 0) or (RealOre:FindFirstChild("MaxDepth") and RealOre.MaxDepth.Value > 5880) then
		continue
	end
	local containerModel

	if EspFolder:FindFirstChild(oreName .. "_ESP") then 
		containerModel = EspFolder[oreName .. "_ESP"]
	else
		containerModel = Instance.new("Model")
		containerModel.Name = oreName .. "_ESP"
		containerModel.Parent = EspFolder
		
		local Color = RealOre:FindFirstChild("OreColor")
		if Color then Color = Color.Value end 
		local highlight = Instance.new("Highlight")
		highlight.Name = "Highlight"
		highlight.Adornee = containerModel
		highlight.FillColor = Color or  DEFAULT_COLOR -- Set default, will update dynamically when ore is found
		highlight.OutlineColor = Color or  Color3.fromRGB(255, 255, 255)
		highlight.FillTransparency = 0.5
		highlight.OutlineTransparency = 0
		highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		highlight.Parent = containerModel
		Highlights[oreName] = highlight
	end
	task.wait(0.01)
	OreModels[oreName] = containerModel

end

local function getOreColor(realOre)
	if realOre:IsA("BasePart") then
		return realOre.Color
	end

	if realOre:IsA("Model") then
		if realOre.PrimaryPart then
			return realOre.PrimaryPart.Color
		end
		local part = realOre:FindFirstChildWhichIsA("BasePart", true)
		if part then
			return part.Color
		end
	end

	return DEFAULT_COLOR
end

local function cleanInstance(instance)
	for _, child in ipairs(instance:GetDescendants()) do
		if child:IsA("Script") or child:IsA("LocalScript") or child:IsA("Sound") or child:IsA("TouchTransmitter") or child:IsA("Decal") then
			child:Destroy()
		elseif child:IsA("BasePart") then
			child.CanCollide = false
			child.CanTouch = false
			child.CanQuery = false
			child.Anchored = true
			child.Massless = true
		end
	end
	if instance:IsA("BasePart") then
		instance.CanCollide = false
		instance.CanTouch = false
		instance.CanQuery = false
		instance.Anchored = true
		instance.Massless = true
	end
end

local function addFakeCopy(realOre)
	local oreName = realOre.Name

	if not Toggles[oreName] or not OreModels[oreName] then return end
	if TrackedCopies[realOre] then return end 

	-- Dynamically grab the real color from the ore model/part
	local detectedColor = getOreColor(realOre)
	-- Create client-side fake clone
	realOre.Archivable = true
	local fakeCopy = realOre:Clone()
	cleanInstance(fakeCopy)

	-- Align transform
	fakeCopy:PivotTo(realOre:GetPivot())
	fakeCopy.Parent = OreModels[oreName]

	TrackedCopies[realOre] = fakeCopy

	-- Cleanup on despawn/mine
	realOre.Destroying:Connect(function()
		if TrackedCopies[realOre] then
			TrackedCopies[realOre]:Destroy()
			TrackedCopies[realOre] = nil
		end
	end)
end

local function removeFakeCopy(realOre)
	if TrackedCopies[realOre] then
		TrackedCopies[realOre]:Destroy()
		TrackedCopies[realOre] = nil
	end
end

-- Remove all fake copies for a specific ore type (used when toggling off)
local function removeAllCopiesForOre(oreName)
	for realOre, fakeCopy in pairs(TrackedCopies) do
		if realOre.Name == oreName then
			fakeCopy:Destroy()
			TrackedCopies[realOre] = nil
		end
	end
end

-- Add fake copies for all existing ores of a specific type (used when toggling on)
local function addAllCopiesForOre(oreName)
	Tasks[oreName] = true
	if not mineFolder then return end
	local Count = 0
	for _, item in ipairs(mineFolder:GetChildren()) do
		if item.Name == oreName then
		    Count+=1
			addFakeCopy(item)
			if Count%10 == 0 then
			task.wait(0.01)
			end
		end
	end
	print("Added all",oreName)
	Tasks[oreName] = nil
	return
end

mineFolder = Workspace:WaitForChild("Mine", 10)

if mineFolder then
	-- Process existing items (only for toggles that start as true)
	for _, item in ipairs(mineFolder:GetChildren()) do
		if Toggles[item.Name] then
			addFakeCopy(item)
		end
	end

	-- Listen for newly spawned ores
	mineFolder.ChildAdded:Connect(function(child)
		if Toggles[child.Name] then
			addFakeCopy(child)
		end
	end)

	mineFolder.ChildRemoved:Connect(function(child)
		removeFakeCopy(child)
	end)
end




local toggleBtn = ToggleBtn
local closeBtn = CloseBtn

-- Panel open/close
local isPanelOpen = false
if MainPanel then
	MainPanel.Visible = false
end

local function setPanelOpen(open)
	isPanelOpen = open
	if MainPanel then
		MainPanel.Visible = open
	end
end

if toggleBtn then
	toggleBtn.MouseButton1Click:Connect(function()
		setPanelOpen(not isPanelOpen)
	end)
end

if closeBtn then
	closeBtn.MouseButton1Click:Connect(function()
		setPanelOpen(false)
	end)
end

-- Ore toggle buttons
local oreScroll = MainPanel and MainPanel:FindFirstChild("OreScroll")
if oreScroll then
	for _, btn in ipairs(oreScroll:GetChildren()) do
		if btn:IsA("TextButton") then
			local oreName = btn.Name
			local stroke = btn:FindFirstChildOfClass("UIStroke")

			-- Sync stroke to initial toggle state
			if stroke then
				stroke.Enabled = Toggles[oreName] or false
			end

			btn.MouseButton1Click:Connect(function()
				print("Clicked",btn.Name)
				if Tasks[oreName] then return end 
				Toggles[oreName] = not Toggles[oreName]

				

				if Toggles[oreName] then
					print("Enabled")
					
					-- Toggle turned ON: add copies for existing ores of this type
					addAllCopiesForOre(oreName)
				else
					print("Disable")
					-- Toggle turned OFF: remove all copies of this type
					removeAllCopiesForOre(oreName)
				end
				if stroke then
					stroke.Enabled = Toggles[oreName]
				end
			end)
		end
	end
end

Search:GetPropertyChangedSignal("Text"):Connect(function()
	local searchText = string.lower(Search.Text)
	for _, btn in ipairs(oreScroll:GetChildren()) do
		if btn:IsA("TextButton") then
			local oreName = string.lower(btn.Name)
			btn.Visible = string.find(oreName, searchText, 1, true) ~= nil
			if btn:FindFirstChild("Hide") then
				btn.Visible = false
			end
		end
	end
end)
