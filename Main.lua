-- Add anything... (by forking this project)
-- Every change will be approved by JamerchGIT!

local toolbar = plugin:CreateToolbar("PCMRP")
local message = "visit https://github.com/jswagging/Published-Community-Made-Roblox-Plugin to make changes!"
local destroy = toolbar:CreateButton("Button That Destroys Everything in The Workspace", "Button That Destroys Everything in The Workspace", "rbxassetid://74783578358968")
local randomlighting = toolbar:CreateButton("Randomize Game Lighting", "self explanatory", "rbxassetid://108545913588312")
local jamerbutton = toolbar:CreateButton("spawn jamer.", "spawns jamer.", "rbxassetid://79146527786675")

local function randomlight()
	game.Lighting.Brightness = math.random(1, 10)
	game.Lighting.ClockTime = math.random() * 24
	game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
	game.Lighting.OutdoorAmbient = Color3.new(math.random(), math.random(), math.random())
	game.Lighting.FogColor = Color3.new(math.random(), math.random(), math.random())
	game.Lighting.FogStart = math.random(0, 100)
	game.Lighting.FogEnd = math.random(200, 1000)
	game.Lighting.EnvironmentDiffuseScale = math.random()
	game.Lighting.EnvironmentSpecularScale = math.random()
	game.Lighting.ExposureCompensation = math.random(-2, 2)
end

destroy.Click:Connect(function()
	print(message)
	for i,v in workspace:GetChildren() do
		game:GetService("Debris"):AddItem(v,math.random(1,1000)/100)
	end
end)

randomlighting.Click:Connect(randomlight)

jamerbutton.Click:Connect(function()
	local jamer = game:GetService("Players"):CreateHumanoidModelFromUserId(4064527808)
	jamer.Parent = workspace
	jamer.Name = "jamer"
end)
