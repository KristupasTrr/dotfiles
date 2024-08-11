return {
  {
    "neovim/nvim-lspconfig",
    -- Add, change or remove keymaps
    init = function()
      -- disable lsp watcher. Too slow on linux
      local ok, wf = pcall(require, "vim.lsp._watchfiles")
      if ok then
        wf._watchfunc = function()
          return function() end
        end
      end
    end,
  },

  -- Import langs for LSP
  { import = "plugins.lang" },
}
