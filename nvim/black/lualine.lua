-- lualine.lua
return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
      require('lualine').setup({
        options = {
          theme = 'monoglow',  -- use the monoglow colorscheme
          section_separators = '',
          component_separators = '',
        },
      })
    end
  }
}

