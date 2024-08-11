return {
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "clangd",
      },
    },
  },

  -- Add `c` and `cpp` to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "c", "cpp" },
    },
  },

  -- Add `tools` to mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "clang-format" },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          init_options = {
            completeUnimported = true,
          },
        },
      },
    },
  },
}
