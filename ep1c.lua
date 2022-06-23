local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "EP1C", HidePremium = false, SaveConfig = true, ConfigFolder = "configs", IntroEnabled = false })


local Basic = Window:MakeTab({
	Name = "Basic",
--	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Basic:AddSection({
	Name = "LocalHost Stuff"
})

OrionLib:MakeNotification({
	Name = "THIS SCRIPT ISNT VERY GOOD!!!!",
	Content = "It is very new and basically unusable. Use DomainX if you want something actually useful and usable.",
--	Image = "rbxassetid://4483345998",
	Time = 10
})


Basic:AddToggle({
	Name = "Fly",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})


Basic:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
--	ValueName = "",
	Callback = function(Value)
		getgenv().WalkSpeedValue = Value; --set your desired walkspeed here
        local Player = game:service'Players'.LocalPlayer;
        Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
        end)
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
	end    
})

OrionLib:Init()
