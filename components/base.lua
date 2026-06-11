-- components/base.lua
local ClickHandler = require(script.Parent.Parent.utility.click_handler)

local Base = {}

function Base.Create(instance, callbacks)
    -- Attach click support by default to every component
    ClickHandler.Bind(instance, callbacks)
    return instance
end

return Base
