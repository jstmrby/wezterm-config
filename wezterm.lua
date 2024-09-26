-- Pull in the wezterm API
local wezterm = require("wezterm")
local font = require("font")
local background = require("background")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- For example, changing the color scheme:
font.set_font(config)
background.set_bg(config, "Dark")

-- and finally, return the configuration to wezterm
return config
