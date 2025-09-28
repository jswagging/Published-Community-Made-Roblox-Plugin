-- Add anything... (by forking this project)
-- Every change will have to be approved by JamerchGIT!

local toolbar = plugin:CreateToolbar("PCMRP")
local button = toolbar:CreateButton("Button", "This will soon be changed...", "rbxassetid://88107201574608")

button.Click:Connect(function()
	print("visit https://github.com/jswagging/Published-Community-Made-Roblox-Plugin to make changes!")
end)

local button = toolbar:CreateButton("Button That Destroys Everything in The Workspace", "Button That Destroys Everything in The Workspace", "rbxassetid://74783578358968")

button.Click:Connect(function()
	for i,v in workspace:GetChildren() do
		game:GetService("Debris"):AddItem(v,math.random(1,1000)/100)
	end
end)
