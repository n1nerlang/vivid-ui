-- source.lua
local Vivid = {}

-- Load modules
local Root = script.Parent
Vivid.Window = require(Root.window)
Vivid.Components = require(Root.components)
Vivid.Icons = require(Root.images.icons)
Vivid.State = require(Root.utility.state)

return Vivid
