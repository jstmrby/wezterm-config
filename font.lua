local wezterm = require("wezterm")

local module = {}

function module.set_font(config)
	config.color_scheme = "Obsidian (Gogh)"
	config.font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Medium" })
	config.font_size = 14.0

	config.window_frame = {
		font = wezterm.font("Cascadia Code PL", { weight = "Bold" }),
	}
end

return module
