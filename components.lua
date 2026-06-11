-- components.lua
local Base = require(script.Parent.components.base)
local Icons = require(script.Parent.images.icons)

local Components = {}

-- Utility to create the classic 9x bevel effect
local function ApplyBevel(instance)
    local TopLeft = Instance.new("Frame", instance)
    TopLeft.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopLeft.BorderSizePixel = 0
    TopLeft.Size = UDim2.new(1, 0, 0, 1)

    local BottomRight = Instance.new("Frame", instance)
    BottomRight.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
    BottomRight.BorderSizePixel = 0
    BottomRight.Size = UDim2.new(0, 1, 1, 0)
    BottomRight.Position = UDim2.new(1, -1, 0, 0)
end

function Components.CreateButton(text, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 100, 0, 25)
    btn.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
    btn.Text = text
    btn.AutoButtonColor = false -- Disable native highlight to use ours
    
    ApplyBevel(btn)
    
    return Base.Create(btn, {
        LeftClick = callback
    })
end

function Components.CreateCheckbox(label, callback)
    local holder = Instance.new("Frame")
    holder.BackgroundTransparency = 1
    
    local box = Instance.new("TextButton", holder)
    box.Size = UDim2.fromOffset(15, 15)
    box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    box.Text = ""
    
    ApplyBevel(box)
    
    -- Logic for toggling a checkmark icon goes here
    return Base.Create(box, {
        LeftClick = callback
    })
end

return Components
