local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "EP1C", HidePremium = false, SaveConfig = true, ConfigFolder = "configs", IntroEnabled = true, IntroText = "shit" })


local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Section"
})

OrionLib:MakeNotification({
	Name = "poopy!!!!!!!!",
	Content = "poop fart face!!!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

Tab:AddButton({
	Name = "Button!",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab:AddToggle({
	Name = "This is a toggle!",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

local ColorPicker = Tab:AddColorpicker({
	Name = "ColorPicker",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		print(Value)
	end	  
})

ColorPicker:Set(Color3.fromRGB(255,255,255))

Tab:AddSlider({
	Name = "Slider",
	Min = 0,
	Max = 20,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(Value)
		print(Value)
	end    
})

Tab:AddLabel("Label")

Tab:AddParagraph("Paragraph","Paragraph Content")

OrionLib:Init()
