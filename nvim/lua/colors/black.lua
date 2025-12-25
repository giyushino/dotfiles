-- Black theme colors
return {
  name = "black",
  colorscheme = "monoglow",
  plugin = "wnkz/monoglow.nvim",

  -- Syntax highlights (set via nvim_set_hl)
  highlights = {
    Normal = { fg = "#ffffff", bg = "#1c1c1c" },
    Comment = { fg = "#e5dfda" },
    Title = { fg = "#e5dfda" },
    Keyword = { fg = "#ffffff" },
    ["@keyword"] = { fg = "#eae7e6" },
    ["@keyword.return"] = { fg = "#eae7e6", bold = true },
    ["@function.builtin"] = { fg = "#A0A1A0", bold = true },
    ["@variable.builtin"] = { fg = "#DEDEDE", bold = true },
    ["@markup.list"] = { fg = "#DEDEDE", bold = true },
    texCmdGreek = { fg = "#DEDEDE", bold = true },
    SnacksPickerDir = { fg = "#8E8E8E" },
    SnacksPickerFile = { fg = "#FFFFFF" },
    SnacksDashboardDir = { fg = "#FFFFFF" },
    SnacksPickerPathIgnored = { fg = "#FFFFFF" },
    SnacksPickerGitStatusUntracked = { fg = "#FFFFFF" },
    SnacksBorder = { fg = "#585858" },
  },

  -- Extra highlights
  extra_highlights = {
    -- NvimTree
    NvimTreeNormal = { fg = "#ffffff", bg = "None" },
    NvimTreeFolderName = { fg = "#ffffff" },
    NvimTreeOpenedFolderName = { fg = "#ffffff", bold = true },
    NvimTreeEmptyFolderName = { fg = "#808080" },
    NvimTreeRootFolder = { fg = "#ffffff", bold = true },
    NvimTreeSymlink = { fg = "#cccccc" },
    NvimTreeGitDirty = { fg = "#cccccc" },
    NvimTreeGitNew = { fg = "#ffffff" },
    NvimTreeGitDeleted = { fg = "#808080" },
    NvimTreeSpecialFile = { fg = "#ffffff", underline = true },
  },

  -- Lualine colors
  lualine = {
    bg_dark = "#1c1c1c",
    bg_mid = "#2c2c2c",
    fg = "#ffffff",
    fg_bright = "#ffffff",
    accent = "#1bfd9c",
    accent_alt = "#585858",
    warning = "#EBCB8B",
  },
}
