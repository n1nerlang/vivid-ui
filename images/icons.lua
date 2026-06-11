-- images/icons.lua
local Icons = {}

-- Use these slots to store the rbxassetid strings for your pixel art.
-- You can upload your own icons to Roblox and paste the IDs here.
Icons.Registry = {
    Close = "rbxassetid://79586827082940",
    Minimize = "rbxassetid://119976625630400",
    Maximize = "rbxassetid://136359168487680",
    Folder = "rbxassetid://99356092113217",
    Settings = "rbxassetid://89574816236891",
    Check = "rbxassetid://97631623472569",
    Warning = "rbxassetid://120009455505635",
    Key = "rbxassetid://84322228709421"
}

-- Function to retrieve an icon ID
function Icons.Get(name)
    return Icons.Registry[name] or ""
end

return Icons
