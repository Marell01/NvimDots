return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      finder = {
        -- Configure fd to show hidden files
        files = {
          cmd = "fd --type f --hidden --follow --exclude .git --strip-cwd-prefix",
        },
      },
    },
  },
}
