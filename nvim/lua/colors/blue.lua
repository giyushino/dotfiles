-- Blue theme colors
return {
  name = "blue",
  colorscheme = "nightfox",
  plugin = "EdenEast/nightfox.nvim",

  -- Syntax highlights (nightfox groups)
  highlights = {
    NonText = "#a8c4ec",
    Comment = "#a8c4ec",
    String = "#83a0ce",
    Number = "#5d8be2",
    ["@variable"] = "#93b7f2",
    ["@variable.parameter"] = "#53a1e0",
    ["@parameter"] = "#3471eb",
    Parameter = "#3471eb",
    ["@keyword.function"] = "#5f8dd9",
    Function = "#6d9cd3",
    ["@keyword.return"] = "#6287bb",
    Conditional = "#548ee3",
    Constant = "#5478f6",
    ["@constant.builtin"] = "#6276bb",
    PreProc = "#5a90e8",
    ["@function.builtin"] = "#5683fb",
    ["@module"] = "#91c7e4",
    ["@constructor"] = "#7784d5",
    ["@variable.builtin"] = "#78aae7",
    ["@punctuation.special"] = "#0868dc",
    Type = "#6272ff",
    ["@type.builtin"] = "#6272ff",
    Keyword = "#657fda",
  },

  -- Extra highlights set after colorscheme loads
  extra_highlights = {
    LspSignatureActiveParameter = { fg = "#B19CD7", bold = true },
    Statement = { fg = "#8ecdc8", italic = true },
    Conceal = { fg = "#a8c4ec" },
    texNormal = { fg = "#a8c4ec" },
  },

  -- Lualine colors
  lualine = {
    bg_dark = "#3B4252",
    bg_mid = "#4C566A",
    fg = "#E5E9F0",
    fg_bright = "#ECEFF4",
    accent = "#93b7f2",
    accent_alt = "#8FBCBB",
    warning = "#EBCB8B",
  },
}
