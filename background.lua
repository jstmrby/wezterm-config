local module = {}

function module.set_bg(config, theme)
	if theme == "MiamiVice" then
		config.background = MiamiVice()
	elseif theme == "Ig" then
		config.background = Ig()
	elseif theme == "Dark" then
		config.background = Dark()
	else
		config.background = Opaque()
	end

	config.window_background_opacity = 0.75
	config.macos_window_background_blur = 40
	config.win32_system_backdrop = "Acrylic"
end

function MiamiVice()
	local color1 = "cyan"
	local color2 = "magenta"

	return {
		{
			source = {
				Gradient = {
					colors = { color2, color1 },
					orientation = "Horizontal",
				},
			},
			width = "100%",
			height = "100%",
		},
		{
			source = {
				Gradient = {
					colors = { color1, "transparent" },
					orientation = {
						Radial = {
							cx = 0.9,
							cy = 0.05,
							radius = 1,
						},
					},
				},
			},
			width = "100%",
			height = "100%",
		},
		{
			source = { Color = "black" },
			opacity = 0.7,
			width = "100%",
			height = "100%",
		},
	}
end

function Ig()
	local color1 = "purple"
	local color2 = "yellow"

	return {
		{
			source = {
				Gradient = {
					colors = { color2, color1 },
					orientation = "Horizontal",
				},
			},
			width = "100%",
			height = "100%",
		},
		{
			source = {
				Gradient = {
					colors = { color1, "transparent" },
					orientation = {
						Radial = {
							cx = 0.9,
							cy = 0.2,
							radius = 2.5,
						},
					},
				},
			},
			width = "100%",
			height = "100%",
		},
		{
			source = { Color = "black" },
			opacity = 0.3,
			width = "100%",
			height = "100%",
		},
	}
end

function Dark()
	-- local color1 = "#2c2d30"
	local color1 = "#35373b"
	local color2 = "#242628"

	return {
		{
			source = {
				Gradient = {
					colors = { color2, color1 },
					orientation = "Horizontal",
				},
			},
			width = "100%",
			height = "100%",
		},
		{
			source = {
				Gradient = {
					colors = { color1, "transparent" },
					orientation = {
						Radial = {
							cx = 0.95,
							cy = 0.05,
							radius = 1.5,
						},
					},
				},
			},
			width = "100%",
			height = "100%",
		},
	}
end

function Opaque()
	return {
		{
			source = {
				Gradient = {
					colors = { "#000000cc", "#00000080" },
					orientation = "Vertical",
				},
			},
			width = "100%",
			height = "100%",
		},
	}
end

return module
