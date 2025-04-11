return {
    {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate', -- Automatically update parsers
      event = { "BufReadPost", "BufNewFile" }, -- Lazy load for better performance
      config = function()
        require('nvim-treesitter.configs').setup({
          ensure_installed = {
            "python", "lua", "cpp", "javascript", "typescript", "bash", "html", "json"
          }, -- Add the languages you work with
          highlight = {
            enable = true, -- Enable syntax highlighting
          },
          indent = {
            enable = true, -- Enable automatic indentation
          },
          incremental_selection = {
            enable = true,
            keymaps = {
              init_selection = "<CR>",
              node_incremental = "<CR>",
              node_decremental = "<BS>",
            },
          },
        })
      end,
    }
}
