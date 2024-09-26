-- Pull in the wezterm API
local wezterm = require("wezterm")
local font = require("font")
local background = require("background")
local windows = require("windows")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- For example, changing the color scheme:
font.set_font(config)
background.set_bg(config, "Dark")

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	windows.default_to_ps(config)
end

-- and finally, return the configuration to wezterm
return config
