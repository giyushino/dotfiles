return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup{
      defaults = {
        -- Show hidden files
        hidden = true,
        -- Ignore certain patterns
        file_ignore_patterns = {
          "%.pt$", "%.safetensors$", "%.json$", "%.o$", "%.obj$", "%.class$", "%.DS_Store$",
          "%.pyc$", "__pycache__/", "node_modules/", "%.lock$", ".git/", "%.swp$", "%.swo$", "%.bak$", "%.tmp$", "%.log$",
          "__init__%.py$"
        },
        -- Optional layout and sorting defaults
        layout_strategy = "flex",
        sorting_strategy = "ascending",
      }
    }

    -- Optional: keymaps for find_files and live_grep
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
    vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
    vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
    vim.api.nvim_set_keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)
  end
}
