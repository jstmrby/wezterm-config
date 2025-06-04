local wezterm = require("wezterm")
local platform = require("utils.platform")

return function(config)
	config.font = wezterm.font({
		family = "IntoneMono Nerd Font Mono",
		weight = "Medium",
	})
	config.font_size = platform.is_mac and 18 or 16
	config.line_height = 1
end
