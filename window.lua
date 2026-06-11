-- window.lua
local Icons = require(script.Parent.images.icons)

local Window = {}
Window.__index = Window

function Window.new(title)
    local self = setmetatable({}, Window)
    
    -- Main Container
    self.Frame = Instance.new("Frame")
    self.Frame.Size = UDim2.fromOffset(300, 200)
    self.Frame.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
    
    -- Title Bar
    local TitleBar = Instance.new("Frame", self.Frame)
    TitleBar.Size = UDim2.new(1, 0, 0, 25)
    TitleBar.BackgroundColor3 = Color3.fromRGB(0, 0, 128)
    
    -- Close Button
    local CloseBtn = Instance.new("ImageButton", TitleBar)
    CloseBtn.Size = UDim2.fromOffset(20, 20)
    CloseBtn.Position = UDim2.new(1, -22, 0, 2)
    CloseBtn.Image = Icons.Get("Close")
    
    -- Add your logic here (Draggable, etc.)
    
    return self
end

return Window
