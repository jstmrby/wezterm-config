local wezterm = require("wezterm")

local module = {}

function module.set_font(config)
	config.color_scheme = "Obsidian (Gogh)"
	config.font = wezterm.font("IntoneMono Nerd Font Mono", { weight = "Medium" })
	config.font_size = 14.0
	config.line_height = 1.1

	config.window_frame = {
		font = wezterm.font("Hurmit Nerd Font Mono", { weight = "Bold" }),
	}
end

return module
