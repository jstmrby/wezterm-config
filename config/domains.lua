return {
  -- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
  -- ssh_domains = {},
  ssh_domains = {},

  -- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
  unix_domains = {},

  -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
  wsl_domains = {
    {
      name = 'WSL:Ubuntu',
      distribution = 'Ubuntu',
      username = 'jstmrby',
      default_cwd = '/home/jstmrby',
      default_prog = { 'bash', '-l' },
    },
  },
}
