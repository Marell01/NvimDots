return {
  -- Add svelte to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "svelte",
        "typescript",
        "tsx",
        "javascript",
        "html",
        "css",
        "json",
      })
    end,
  },

  -- Configure LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        svelte = {
          tailwindcss = {
            filetypes_include = { "svelte" },
          },
          ts_ls = {
            filetypes = {
              "javascript",
              "javascriptreact",
              "typescript",
              "typescriptreact",
              "svelte",
            },
            settings = {
              typescript = {
                inlayHints = {
                  includeInlayParameterNameHints = "all",
                  includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                  includeInlayFunctionParameterTypeHints = true,
                  includeInlayVariableTypeHints = true,
                  includeInlayPropertyDeclarationTypeHints = true,
                  includeInlayFunctionLikeReturnTypeHints = true,
                  includeInlayEnumMemberValueHints = true,
                },
                javascript = {
                  inlayHints = {
                    includeInlayParameterNameHints = "all",
                    includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                    includeInlayFunctionParameterTypeHints = true,
                    includeInlayVariableTypeHints = true,
                    includeInlayPropertyDeclarationTypeHints = true,
                    includeInlayFunctionLikeReturnTypeHints = true,
                    includeInlayEnumMemberValueHints = true,
                  },
                },
              },
              init_options = {
                plugins = {
                  {
                    name = "@sveltejs/typescript-plugin",
                    location = vim.fn.stdpath("data")
                      .. "/mason/packages/svelte-language-server/node_modules/@sveltejs/typescript-plugin",
                  },
                },
              },
            },
          },
        },
      },
    },
  },

  -- Add svelte formatting
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        svelte = { "prettier" },
      },
    },
  },
}
