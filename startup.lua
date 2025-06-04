local launch = require("utils.launch")

return function(config)
	config.default_prog = launch.default_prog
	config.launch_menu = launch.launch_menu
	config.initial_cols = 120
	config.initial_rows = 28
	config.max_fps = 120
end
