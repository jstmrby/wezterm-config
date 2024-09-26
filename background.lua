local module = {}

function module.set_bg(config, theme)
	if theme == "miamiVice" then
		config.background = MiamiVice()
	elseif theme == "ig" then
		config.background = Ig()
	else
		config.background = Dark()
	end
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
	local color1 = "#2c2d30"
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
							radius = 1,
						},
					},
					noise = 100,
				},
			},
			width = "100%",
			height = "100%",
		},
	}
end

return module
