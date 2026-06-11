-- utility/state.lua
local State = {}
State.__index = State

function State.new(initialValue)
    local self = setmetatable({
        value = initialValue,
        listeners = {}
    }, State)
    return self
end

function State:Set(newValue)
    self.value = newValue
    for _, callback in pairs(self.listeners) do
        callback(newValue)
    end
end

function State:Get()
    return self.value
end

function State:Subscribe(callback)
    table.insert(self.listeners, callback)
end

return State
