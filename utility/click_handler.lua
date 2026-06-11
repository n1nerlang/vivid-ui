-- utility/click_handler.lua
local ClickHandler = {}

function ClickHandler.Bind(object, callbacks)
    local lastClick = 0
    local isDragging = false
    local clickThreshold = 0.25 -- Seconds for double click

    object.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        
        -- Reset drag state when a new interaction begins
        isDragging = false

        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            -- Trigger Left Click
            if callbacks.LeftClick then callbacks.LeftClick() end
            
            -- Detect Double Click
            local currentTime = tick()
            if (currentTime - lastClick) < clickThreshold then
                if callbacks.DoubleClick then callbacks.DoubleClick() end
                lastClick = 0 -- Reset to prevent triple-click triggering
            else
                lastClick = currentTime
            end
        elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
            if callbacks.RightClick then callbacks.RightClick() end
        end
    end)

    -- Detect if the user is dragging the object so we don't fire clicks
    object.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            if input.Delta.Magnitude > 2 then
                isDragging = true
            end
        end
    end)
    
    -- Optional: Add a "Click" state visual feedback
    object.MouseButton1Down:Connect(function()
        object.BackgroundColor3 = object.BackgroundColor3:Lerp(Color3.new(0,0,0), 0.1)
    end)
    
    object.MouseButton1Up:Connect(function()
        -- Reset color back to original (you'd need to store the default color)
    end)
end

return ClickHandler
