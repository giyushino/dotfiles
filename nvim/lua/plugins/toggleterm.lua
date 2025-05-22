return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require('toggleterm').setup{
        size = 20,
        open_mapping = [[<leader>;]],  -- Keep this if you want to use the default mapping
        direction = "float",
        shade_terminals = false,
        start_in_insert = true,
        persist_size = true,
        float_opts = {
          border = "rounded",
          winblend = 0,
        },
      }

      -- Remove this keymap setting to avoid overriding <leader>; with a custom mapping
      -- vim.keymap.set("n", "<leader>;", function()
      --   local file_dir = vim.fn.expand("%:p:h")
      --   local cmd = "fish"

      --   require("toggleterm.terminal").Terminal
      --     :new({ dir = file_dir, direction = "float", cmd = cmd })
      --     :toggle()
      -- end, { noremap = true, silent = true })
    end,
  },
}
