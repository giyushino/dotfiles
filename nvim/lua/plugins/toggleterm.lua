return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require('toggleterm').setup{
        size = 20,
        open_mapping = [[<leader>;]],
        direction = "float",
        shade_terminals = false, -- Disable shading for true transparency
        start_in_insert = true,
        persist_size = true,
        float_opts = {
          border = "rounded", -- Rounded corners
          winblend = 0, -- Transparency (0 = opaque, 100 = fully transparent)
        },
      }

      -- Open terminal in the current file's directory dynamically
      vim.keymap.set("n", "<leader>;", function()
        local file_dir = vim.fn.expand("%:p:h") -- Get current file's directory

        -- Use the existing terminal environment without specifying a new shell
        -- This will open the terminal in the same state as the current shell (with Conda if activated)
        local cmd = "fish"  -- This assumes you are using fish shell; adjust if needed

        require("toggleterm.terminal").Terminal
          :new({ dir = file_dir, direction = "float", cmd = cmd })
          :toggle()
      end, { noremap = true, silent = true })
    end,
  },
}

