return {
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "pylsp",
      },
    },
  },

  -- Add `python` to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "python" },
    },
  },

  -- Add `pylsp` LSP server
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          plugins = {
            pycodestyle = {
              enabled = false,
            },
          },
        },
      },
    },
  },
}
