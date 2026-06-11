-- images/icons.lua
local Icons = {}

-- Use these slots to store the rbxassetid strings for your pixel art.
-- You can upload your own icons to Roblox and paste the IDs here.
Icons.Registry = {
    Close = "rbxassetid://0000000000",
    Minimize = "rbxassetid://0000000000",
    Maximize = "rbxassetid://0000000000",
    Folder = "rbxassetid://0000000000",
    Settings = "rbxassetid://0000000000",
    Check = "rbxassetid://0000000000",
    Warning = "rbxassetid://0000000000"
}

-- Function to retrieve an icon ID
function Icons.Get(name)
    return Icons.Registry[name] or ""
end

return Icons
