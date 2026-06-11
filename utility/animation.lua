-- utility/animation.lua
local TweenService = game:GetService("TweenService")

local Animation = {}

function Animation.Press(instance)
    local info = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
    -- Invert the bevel colors to create a "pushed" effect
    TweenService:Create(instance, info, {BackgroundColor3 = Color3.fromRGB(150, 150, 150)}):Play()
end

function Animation.Release(instance)
    local info = TweenService.new(0.1, Enum.EasingStyle.Linear)
    TweenService:Create(instance, info, {BackgroundColor3 = Color3.fromRGB(192, 192, 192)}):Play()
end

return Animation
