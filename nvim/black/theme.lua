return {
  {
    "wnkz/monoglow.nvim",
    lazy = false,       -- load immediately
    priority = 1000,    -- load before other plugins
    opts = {},          -- configuration options, empty for now
    config = function()
      require('monoglow').setup({})
      vim.cmd("colorscheme monoglow")  -- actually load the colorscheme
      vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = "#8E8E8E", bg = "None" })
      vim.api.nvim_set_hl(0, "SnacksPickerFile", { fg = "#FFFFFF", bg = "None" })

      vim.api.nvim_set_hl(0, "SnacksPickerPathIgnored", { fg = "#FFFFFF", bg = "None" })
      vim.api.nvim_set_hl(0, "SnacksPickerGitStatusUntracked", { fg = "#FFFFFF", bg = "None" })
      vim.api.nvim_set_hl(0, "SnacksBorder", { fg = "#585858", bg = "None" })
      vim.api.nvim_set_hl(0, "Normal", { fg = "#ffffff", bg = "#1c1c1c" })
      vim.api.nvim_set_hl(0, "Comment", { fg = "#e5dfda", bg = "None" })
      vim.api.nvim_set_hl(0, "Title", { fg = "#e5dfda", bg = "None" })
      vim.api.nvim_set_hl(0, "@keyword.return", { fg = "#eae7e6", bold = true })
      vim.api.nvim_set_hl(0, "@function.builtin", { fg = "#A0A1A0", bold = true })
      vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "#DEDEDE", bold = true })
      vim.api.nvim_set_hl(0, "@markup.list", { fg = "#DEDEDE", bold = true })
      vim.api.nvim_set_hl(0, "texCmdGreek", { fg = "#DEDEDE", bold = true })
      -- to change the glow, change Operator
    end
  }
}
