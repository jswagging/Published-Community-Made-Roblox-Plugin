-- Add anything... (by forking this project)
-- Every change will be approved by JamerchGIT!

local toolbar = plugin:CreateToolbar("PCMRP")
local message = "visit https://github.com/jswagging/Published-Community-Made-Roblox-Plugin to make changes!"
local button = toolbar:CreateButton("Button That Destroys Everything in The Workspace", "Button That Destroys Everything in The Workspace", "rbxassetid://74783578358968")

button.Click:Connect(function()
	print(message)
	for i,v in workspace:GetChildren() do
		game:GetService("Debris"):AddItem(v,math.random(1,1000)/100)
	end
end)
