return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  {
    "xiyaowong/nvim-transparent",
    lazy = false,
  },

  {
    "arcticicestudio/nord-vim",
    config = function()
      local colorScheme = vim.api.nvim_create_augroup("CustomColorScheme", { clear = true })
      local commands = {
        [[hi LineNr guifg=#7584A5 ctermfg=4 ctermbg=None]],
        [[hi Comment guifg=#7584A5 ctermfg=4 ctermbg=None]],
        [[hi Visual guibg=#4C566A ctermbg=4]],
      }
      for _, v in pairs(commands) do
        vim.api.nvim_create_autocmd("ColorScheme", { group = colorScheme, command = v })
      end
    end,
  },
}
