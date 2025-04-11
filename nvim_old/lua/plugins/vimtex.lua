return {
  {
    'lervag/vimtex',
    lazy = true, 
    ft = "tex",
    init = function()
      -- Vimtex configuration
      vim.g.vimtex_view_method = "general"
      vim.g.vimtex_view_pdf_method = "start"
      --
      vim.g.vimtex_view_forward_search = 1
      vim.g.vimtex_view_general_viewer = "/usr/bin/sioyek"
    end,
    config = function()
      -- Key mappings
      vim.api.nvim_set_keymap('n', '<leader>l', ':VimtexCompile<CR>', { noremap = true, silent = true })
      -- Refresh LaTeX document
      vim.api.nvim_set_keymap('n', '<leader>t', ':VimtexView<CR>', { noremap = true, silent = true })
    end,
  },

  -- Other plugins...
}

