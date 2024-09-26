local module = {}

function module.default_to_ps(config)
	config.default_prog = { "powershell.exe" }
end

return module
