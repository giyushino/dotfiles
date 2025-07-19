return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    local colors = {
      nord1  = '#3B4252',
      nord3  = '#4C566A',
      nord5  = '#E5E9F0',
      nord6  = '#ECEFF4',
      nord7  = '#8FBCBB',
      nord8  = '#93b7f2', --'#88C0D0',
      nord13 = '#EBCB8B',
    }
     local nord_theme = {
      normal = {
        a = { fg = colors.nord1, bg = colors.nord8, gui = 'bold' },
        b = { fg = colors.nord5, bg = colors.nord1 },
        c = { fg = colors.nord5, bg = colors.nord3 },
      },
      insert = { a = { fg = colors.nord1, bg = colors.nord8, gui = 'bold' } },
      visual = { a = { fg = colors.nord1, bg = colors.nord8, gui = 'bold' } },
      replace = { a = { fg = colors.nord1, bg = colors.nord13, gui = 'bold' } },
      inactive = {
        a = { fg = colors.nord1, bg = colors.nord8, gui = 'bold' },
        b = { fg = colors.nord5, bg = colors.nord1 },
        c = { fg = colors.nord5, bg = colors.nord1 },
      },
    }
  require("lualine").setup {
      options = {
        icons_enabled = true,
        theme = nord_theme,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
          refresh_time = 16,
          events = {
            "WinEnter",
            "BufEnter",
            "BufWritePost",
            "SessionLoadPost",
            "FileChangedShellPost",
            "VimResized",
            "Filetype",
            "CursorMoved",
            "CursorMovedI",
            "ModeChanged",
          },
        },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    }
  end,
}
