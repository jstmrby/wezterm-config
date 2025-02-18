local platform = require('utils.platform')

local options = {
  default_prog = {},
  launch_menu = {},
}

if platform.is_win then
  options.default_prog = { 'powershell' }
  options.launch_menu = {
    { label = 'PowerShell Desktop', args = { 'powershell' } },
    { label = 'Command Prompt', args = { 'cmd' } },
    { label = 'Git Bash', args = { 'bash'  } },
  }
elseif platform.is_mac then
  options.default_prog = { 'zsh', '-l' }
  options.launch_menu = {
    { label = 'Bash', args = { 'bash', '-l' } },
    { label = 'Zsh', args = { 'zsh', '-l' } },
  }
elseif platform.is_linux then
  options.default_prog = { 'bash', '-l' }
  options.launch_menu = {
    { label = 'Bash', args = { 'bash', '-l' } },
    { label = 'Zsh', args = { 'zsh', '-l' } },
  }
end

return options
