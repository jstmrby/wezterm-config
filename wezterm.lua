local wezterm = require("wezterm")
local startup = require("startup")
local font = require("appearance.font")
local color = require("appearance.color")

local config = wezterm.config_builder()

startup(config)
font(config)
color(config)

return config
