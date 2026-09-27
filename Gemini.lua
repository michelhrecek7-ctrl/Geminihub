local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

local GEMINI_CYAN = Color3.fromRGB(0, 195, 255)
local GEMINI_PURPLE = Color3.fromRGB(160, 60, 255)
local GEMINI_BLUE = Color3.fromRGB(70, 100, 255)
local WHITE_BG = Color3.fromRGB(248, 249, 254)
local CARD_BG = Color3.fromRGB(238, 242, 250)
local BTN_BG = Color3.fromRGB(225, 230, 245)
local DARK_TEXT = Color3.fromRGB(22, 26, 40)

local placeScriptsPremium = {
    [131716211654599] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/UITES",
    [16732694052] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/UITES",
    [127794225497302] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/Abyss",
    [2753915549] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/BloxFruit.lua",
    [130594398886540] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/HorizonGardenPrem.lua",
    [130342654546662] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/sambungkata.lua",
    [77747658251236] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/SailorPiece",
    [93978595733734] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/vd.lua",
    [97598239454123] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/GAG2",
}

local placeScriptsFree = {
    [97598239454123] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/GAG2",
    [100875131717601] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/ThrowACoin.lua",
    [77747658251236] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/SailorPiece",
    [93978595733734] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/vd.lua",
    [130342654546662] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/sambungkata.lua",
    [130594398886540] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/HorizonGarden.lua",
    [2753915549] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/BloxFruit.lua",
    [86710642002144] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/Talamau.lua",
    [129009554587176] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/TheForge/tes",
    [76558904092080] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/TheForge/tes",
    [131884594917121] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/TheForge/tes",
    [2693023319] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/Antartika.lua",
    [131716211654599] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/UITES",
    [16732694052] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/UITES",
    [95777993643016] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/Arunika.lua",
    [102234703920418] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/Daun.lua",
    [89100225746834] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/Tanditek.lua",
    [73384821369941] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/Ulap.lua",
    [123224294054165] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/Atin.lua",
    [8735521924] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/DISX/shieldtcentaura-enc.lua",
    [86076978383613] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/huntyZomby.lua",
    [103754275310547] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/huntyZomby.lua",
    [128473079243102] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/arunika2.lua",
    [14963184269] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/Sumbing.lua",
    [121864768012064] = "https://raw.githubusercontent.com/KAN-FISCH/tesss/refs/heads/main/gunung/fishit"
}

local gui = Instance.new("ScreenGui")
gui.Name = "GeminiHubWhiteLoader"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(380, 180)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = WHITE_BG
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 16)
corner.Parent = frame

local stroke = Instance.new("UIStroke")
stroke.Thickness = 2.5
stroke.Parent = frame

local strokeGradient = Instance.new("UIGradient")
strokeGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, GEMINI_CYAN),
	ColorSequenceKeypoint.new(0.5, GEMINI_PURPLE),
	ColorSequenceKeypoint.new(1, GEMINI_BLUE)
})
strokeGradient.Rotation = 45
strokeGradient.Parent = stroke

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 0, 30)
title.Position = UDim2.new(0, 20, 0, 20)
title.BackgroundTransparency = 1
title.Text = "GEMINI HUB ✦"
title.TextColor3 = DARK_TEXT
title.TextSize = 22
title.TextXAlignment = Enum.TextXAlignment.Left
title.Font = Enum.Font.GothamBold
title.Parent = frame

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, -40, 0, 20)
status.Position = UDim2.new(0, 20, 0, 55)
status.BackgroundTransparency = 1
status.Text = "A aplicar tema Gemini Hub..."
status.TextColor3 = GEMINI_PURPLE
status.TextSize = 13
status.TextXAlignment = Enum.TextXAlignment.Left
status.Font = Enum.Font.GothamMedium
status.Parent = frame

task.spawn(function()
	while gui.Parent do
		strokeGradient.Rotation = (strokeGradient.Rotation + 3) % 360
		task.wait(0.03)
	end
end)

local function startThemeOverhaul()
	task.spawn(function()
		local function isTargetGui(screenGui)
			if screenGui.Name == "GeminiHubWhiteLoader" then return false end
			local name = string.lower(screenGui.Name)
			if string.find(name, "chilli") or string.find(name, "shield") or string.find(name, "fisch") or string.find(name, "hub") or string.find(name, "ui") or string.find(name, "main") then
				return true
			end
			return true
		end

		local function isFullScreenOverlay(obj)
			if not obj:IsA("GuiObject") then return false end
			local sz = obj.Size
			if sz.X.Scale >= 0.85 and sz.Y.Scale >= 0.85 then
				return true
			end
			return false
		end

		local function processObject(obj)
			if isFullScreenOverlay(obj) then
				local existingStroke = obj:FindFirstChild("GeminiBorder")
				if existingStroke then
					existingStroke:Destroy()
				end
				return
			end

			if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
				if string.find(obj.Text, "ShieldTeam") or string.find(obj.Text, "NwefFisch") then
					obj.Text = "Gemini Hub ✦"
				elseif string.find(obj.Text, "Chilli Hub") then
					obj.Text = string.gsub(obj.Text, "Chilli Hub", "Gemini Hub ✦")
				elseif string.find(obj.Text, "Chilli") then
					obj.Text = string.gsub(obj.Text, "Chilli", "Gemini")
				elseif string.find(obj.Text, "Spicy Hub") then
					obj.Text = string.gsub(obj.Text, "Spicy Hub", "Gemini Hub ✦")
				elseif string.find(obj.Text, "Spicy") then
					obj.Text = string.gsub(obj.Text, "Spicy", "Gemini")
				end
				
				if obj.TextColor3.R > 0.75 and obj.TextColor3.G > 0.75 and obj.TextColor3.B > 0.75 then
					obj.TextColor3 = DARK_TEXT
				end
			end

			if obj:IsA("Frame") or obj:IsA("ScrollingFrame") then
				if obj.BackgroundColor3.R < 0.2 and obj.BackgroundColor3.G < 0.2 and obj.BackgroundColor3.B < 0.2 then
					obj.BackgroundColor3 = WHITE_BG
					
					local strokeObj = obj:FindFirstChild("GeminiBorder")
					if not strokeObj then
						strokeObj = Instance.new("UIStroke")
						strokeObj.Name = "GeminiBorder"
						strokeObj.Thickness = 2
						strokeObj.Parent = obj

						local grad = Instance.new("UIGradient")
						grad.Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, GEMINI_CYAN),
							ColorSequenceKeypoint.new(0.5, GEMINI_PURPLE),
							ColorSequenceKeypoint.new(1, GEMINI_CYAN)
						})
						grad.Rotation = 45
						grad.Parent = strokeObj
					end
				elseif obj.BackgroundColor3.R < 0.35 then
					obj.BackgroundColor3 = CARD_BG
				end
			end

			if obj:IsA("TextButton") then
				if obj.BackgroundColor3.R > 0.4 or obj.BackgroundColor3.B > 0.4 then
					obj.BackgroundColor3 = BTN_BG
					obj.TextColor3 = DARK_TEXT
					
					local bStroke = obj:FindFirstChild("GeminiBtnStroke")
					if not bStroke then
						bStroke = Instance.new("UIStroke")
						bStroke.Name = "GeminiBtnStroke"
						bStroke.Color = GEMINI_PURPLE
						bStroke.Thickness = 1
						bStroke.Transparency = 0.5
						bStroke.Parent = obj
					end
				end
			end

			if obj:IsA("UIStroke") and obj.Name ~= "GeminiBorder" and obj.Name ~= "GeminiBtnStroke" then
				obj.Color = GEMINI_CYAN
			end
		end

		while true do
			pcall(function()
				for _, guiContainer in pairs({CoreGui, player:WaitForChild("PlayerGui")}) do
					for _, child in pairs(guiContainer:GetChildren()) do
						if child:IsA("ScreenGui") and isTargetGui(child) then
							for _, descendant in pairs(child:GetDescendants()) do
								processObject(descendant)
							end
						end
					end
				end
			end)
			task.wait(0.3)
		end
	end)
end

task.spawn(function()
	local key = _G.Key or (getgenv and getgenv().Key)
	local placeScripts = placeScriptsFree

	if key and tostring(key) ~= "" then
		placeScripts = placeScriptsPremium
	end

	local currentPlaceId = game.PlaceId
	local scriptUrl = placeScripts[currentPlaceId]

	if not scriptUrl then
		status.Text = "✕ Jogo não encontrado na lista!"
		status.TextColor3 = Color3.fromRGB(255, 80, 80)
		task.wait(2)
		gui:Destroy()
		return
	end

	startThemeOverhaul()

	local success, result = pcall(function()
		return loadstring(game:HttpGet(scriptUrl))()
	end)

	if success then
		status.Text = "✓ Gemini Hub Carregado!"
		status.TextColor3 = Color3.fromRGB(40, 200, 120)
		task.wait(0.8)
		gui:Destroy()
	else
		status.Text = "✕ Erro ao executar o script."
		status.TextColor3 = Color3.fromRGB(255, 80, 80)
		warn("Failed to execute script for place " .. currentPlaceId .. ": " .. tostring(result))
		task.wait(2)
		gui:Destroy()
	end
end)
