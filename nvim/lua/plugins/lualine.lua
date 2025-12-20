local colors = require("colors")
local c = colors.lualine

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    local theme
    if c.theme then
      -- Use built-in theme (e.g., monoglow)
      theme = c.theme
    else
      -- Custom theme from colors
      theme = {
        normal = {
          a = { fg = c.bg_dark, bg = c.accent, gui = "bold" },
          b = { fg = c.fg, bg = c.bg_dark },
          c = { fg = c.fg, bg = c.bg_mid },
        },
        insert = { a = { fg = c.bg_dark, bg = c.accent, gui = "bold" } },
        visual = { a = { fg = c.bg_dark, bg = c.accent, gui = "bold" } },
        replace = { a = { fg = c.bg_dark, bg = c.warning, gui = "bold" } },
        inactive = {
          a = { fg = c.bg_dark, bg = c.accent, gui = "bold" },
          b = { fg = c.fg, bg = c.bg_dark },
          c = { fg = c.fg, bg = c.bg_dark },
        },
      }
    end

    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = theme,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
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
    })
  end,
}
