# Vivid UI

## Getting Started
To integrate **Vivid** into your project, use the following `loadstring` method. 
Ensure you have `HttpEnabled` set to true in your Roblox Game Settings.

### Basic Implementation
```lua
local Vivid = loadstring(game:HttpGet("[https://raw.githubusercontent.com/your-repo/Vivid/main/init.lua](https://raw.githubusercontent.com/your-repo/Vivid/main/init.lua)"))()

-- Create a main window
local MyWindow = Vivid:CreateWindow({
    Title = "Vivid V1",
    Size = UDim2.fromOffset(300, 400),
    Resizable = true
})

-- Add a button
MyWindow:AddButton("Click Me", function()
    print("Vivid works!")
end)
