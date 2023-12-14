--[[
------------- fan87's NeoVim config -------------
The configuration is designed to use the default vim key map, with modular design.
--]]


-- Color Scheme
require("fan87.colorscheme")

-- Initialize Plugins
require("packer").startup(require("fan87.plugins"))

-- Vim Configuration
require("fan87.settings")
require("fan87.keybinding")
