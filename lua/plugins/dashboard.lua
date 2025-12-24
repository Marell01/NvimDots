return {
  { "ellisonleao/gruvbox.nvim" },
  { "LazyVim/LazyVim", opts = {
    colorscheme = "gruvbox",
  } },
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
  /$$$$$$                               /$$       /$$    /$$ /$$              
 /$$__  $$                             | $$      | $$   | $$|__/              
| $$  \__/  /$$$$$$  /$$$$$$   /$$$$$$$| $$   /$$| $$   | $$ /$$ /$$$$$$/$$$$ 
| $$       /$$__  $$|____  $$ /$$_____/| $$  /$$/|  $$ / $$/| $$| $$_  $$_  $$
| $$      | $$  \__/ /$$$$$$$| $$      | $$$$$$/  \  $$ $$/ | $$| $$ \ $$ \ $$
| $$    $$| $$      /$$__  $$| $$      | $$_  $$   \  $$$/  | $$| $$ | $$ | $$
|  $$$$$$/| $$     |  $$$$$$$|  $$$$$$$| $$ \  $$   \  $/   | $$| $$ | $$ | $$
 \______/ |__/      \_______/ \_______/|__/  \__/    \_/    |__/|__/ |__/ |__/
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "t", desc = "Open terminal", action = ":terminal"},
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "l", desc = "Change working directory", action = ":cd "},
          { icon = " ", key = "x", desc = "Lazy qxtras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "m", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        },
      },
    },
  },
}
