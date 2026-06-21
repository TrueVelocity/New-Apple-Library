--========================================================--
-- APPLEUI-GEN2 DEMO SCRIPT (All Elements Showcase)
--========================================================--

local AppleUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/TrueVelocity/AppleUI-Gen2/refs/heads/main/newsource.luau"))()

-- Initialize
AppleUI:Initialize()

--========================================================--
-- CREATE MAIN WINDOW
--========================================================--

local MainWindow = AppleUI.API.CreateWindow("Demo Window", "apple", 500, 400)

--========================================================--
-- CREATE SECTIONS
--========================================================--

local Elements = AppleUI.API.Sections:CreateSection("Elements", "grid-2x2")
local Notifications = AppleUI.API.Sections:CreateSection("Notifications", "bell")
local Utilities = AppleUI.API.Sections:CreateSection("Utilities", "wand")
local Settings = AppleUI.API.Sections:CreateSection("Settings", "gear")

--========================================================--
-- ELEMENTS SECTION
--========================================================--

Elements:AddDivider("Basic Elements")

Elements:AddLabel("This is a label.")
Elements:AddButton("Click Me!", function()
    AppleUI.API.Notifications:Notify("Hello!", "You clicked the button!", "check-circle")
end)

Elements:AddToggle("Toggle Me!", false, function(state)
    AppleUI.API.Notifications:Notify("Toggle", "State: " .. tostring(state), "switch")
end)

Elements:AddSlider("Adjust Value", 0, 100, 50, function(value)
    print("Slider value:", value)
end)

Elements:AddInput("Enter text here...", function(text)
    print("Input text:", text)
end)

Elements:AddDivider("Layout Test")
AppleUI.API.Utils:Divider(Elements:GetFrame())

--========================================================--
-- NOTIFICATIONS SECTION
--========================================================--

Notifications:AddDivider("Notification Types")

Notifications:AddButton("Info Notification", function()
    AppleUI.API.Notifications:Notify("Information", "This is an info message.", "info")
end)

Notifications:AddButton("Warning Notification", function()
    AppleUI.API.Notifications:Notify("Warning", "Be careful!", "alert-triangle")
end)

Notifications:AddButton("Success Notification", function()
    AppleUI.API.Notifications:Notify("Success", "Operation completed!", "check-circle")
end)

Notifications:AddButton("Error Notification", function()
    AppleUI.API.Notifications:Notify("Error", "Something went wrong.", "x-circle")
end)

--========================================================--
-- UTILITIES SECTION
--========================================================--

Utilities:AddDivider("Visual Effects")

Utilities:AddButton("Apply Blur", function()
    AppleUI.API.Utils:Blur(true, 15)
end)

Utilities:AddButton("Remove Blur", function()
    AppleUI.API.Utils:Blur(false)
end)

Utilities:AddButton("Add Gradient", function()
    AppleUI.API.Utils:Gradient(MainWindow:GetFrame(), Color3.fromRGB(0, 120, 255), Color3.fromRGB(255, 255, 255), 90)
end)

Utilities:AddButton("Add Glow", function()
    AppleUI.API.Utils:Glow(MainWindow:GetFrame(), Color3.fromRGB(0, 120, 255))
end)

Utilities:AddButton("Add Inner Shadow", function()
    AppleUI.API.Utils:InnerShadow(MainWindow:GetFrame())
end)

--========================================================--
-- SETTINGS SECTION
--========================================================--

Settings:AddDivider("System Controls")

Settings:AddButton("Toggle Visibility", function()
    AppleUI.API.Visibility:Toggle()
end)

Settings:AddButton("Maximize Window", function()
    AppleUI.API.Resize:Toggle(MainWindow:GetFrame())
end)

Settings:AddButton("Unload UI", function()
    AppleUI.API:Unload()
end)

--========================================================--
-- KEYBINDS
--========================================================--

AppleUI.API.Keybinds:Bind(Enum.KeyCode.F, function()
    AppleUI.API.Spotlight:Toggle()
end)

AppleUI.API.Keybinds:Bind(Enum.KeyCode.RightControl, function()
    AppleUI.API.Visibility:Toggle()
end)

--========================================================--
-- SPLASH SCREEN
--========================================================--

AppleUI.API.Splash:Show("AppleUI Gen3 Demo", "All systems ready!", "apple")

--========================================================--
-- FINALIZE
--========================================================--

print("[AppleUI] Demo initialized successfully.")
