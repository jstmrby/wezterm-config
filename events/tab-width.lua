local wezterm = require('wezterm')

local M = {}

M.setup = function()
  ---@param window any WezTerm [window](https://wezterm.org/config/lua/mux-window/index.html)
  local function get_max_cols(window)
    local tab = window:active_tab()
    local cols = tab:get_size().cols
    local right_status_width = 25

    return cols - right_status_width
  end

  wezterm.on('window-config-reloaded', function(window)
    wezterm.GLOBAL.tabline_max_cols = get_max_cols(window)
  end)

  wezterm.on('window-resized', function(window)
    wezterm.GLOBAL.tabline_max_cols = get_max_cols(window)
  end)
end

return M
