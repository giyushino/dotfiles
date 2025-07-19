return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      local toggleterm = require("toggleterm")

      toggleterm.setup({
        size = function(term)
          if term.direction == "horizontal" then
            return 15
          elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
          end
        end,
        open_mapping = [[<leader>l]], -- optional: a default terminal toggle
        direction = "float",          -- fallback default
        shade_terminals = false,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        float_opts = {
          border = "rounded",
          winblend = 0,
        },
      })

      local Terminal = require("toggleterm.terminal").Terminal

      -- Create persistent terminal instances
      local float_term = Terminal:new({ direction = "float", hidden = true })
      local vert_term = Terminal:new({ direction = "vertical", hidden = true })
      local horiz_term = Terminal:new({ direction = "horizontal", hidden = true })

      -- Map different keys for each
      vim.keymap.set("n", "<leader>tf", function()
        float_term:toggle()
      end, { desc = "Toggle Float Terminal" })

      vim.keymap.set("n", "<leader>;", function()
        vert_term:toggle()
      end, { desc = "Toggle Vertical Terminal" })

      vim.keymap.set("n", "<leader>n", function()
        horiz_term:toggle()
      end, { desc = "Toggle Horizontal Terminal" })
    end,
  },
}
