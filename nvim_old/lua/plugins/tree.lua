return{ 
  "nvim-tree/nvim-tree.lua",
  lazy = false, 
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = false, -- Show hidden files (dotfiles)
      },
      git = {
        ignore = false,   
      },
      view = {
        width = 30,
        side = "left", 
      },
    })
    -- Keybinding to toggle the tree
    vim.keymap.set("n", "<leader>m", ":NvimTreeToggle<CR>", {silent = true, noremap = true})
  end,
}

