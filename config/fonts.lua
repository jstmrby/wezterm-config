local wezterm = require('wezterm')
local platform = require('utils.platform')

local font_family = 'IntoneMono Nerd Font Mono'
local font_size = platform.is_mac and 18 or 16
local line_height = 1

return {
  font = wezterm.font({
    family = font_family,
    weight = 'Medium',
  }),
  font_size = font_size,
  line_height = line_height,

  --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
  freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
  freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
