return {
    {
  "EdenEast/nightfox.nvim",
  priority = 1000, -- ensure it's loaded before other UI plugins
  config = function()
    require("nightfox").setup({
      options = {
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled",
        transparent = true,
        terminal_colors = true,
        dim_inactive = false,
        module_default = true,
        colorblind = {
          enable = false,
          simulate_only = false,
          severity = {
            protan = 0,
            deutan = 0,
            tritan = 0,
          },
        },
        styles = {
          comments = "italic",
          conditionals = "NONE",
          constants = "NONE",
          functions = "NONE",
          keywords = "NONE",
          numbers = "NONE",
          operators = "NONE",
          strings = "NONE",
          types = "NONE",
          variables = "NONE",
        },
        inverse = {
          match_paren = false,
          visual = false,
          search = false,
        },
        modules = {
          -- Add any plugin-specific integrations here
        },
      },
      palettes = {},
      specs = {},
      groups = {
        nightfox = {
          NonText = { fg = "#a8c4ec" }, 
          Comment = { fg = "#a8c4ec" },
          String = { fg = "#83a0ce" },
          Number = { fg = "#5d8be2" }, --{ fg = "#8467aa" }, 
          ["@variable"] = { fg = "#93b7f2" }, 
--          ["@variable.parameter"] = { fg = "#949dff" }, 
          ["@variable.parameter"] = { fg = "#53a1e0" }, 
          ["@parameter"] = { fg = "#3471eb" }, 
          Parameter = { fg = "#3471eb" }, 
          --["@variable.parameter"] = { fg = "#65959f" }, --67b5c5 
          ["@keyword.function"] = { fg = "#5f8dd9" },
          Function = { fg = "#6d9cd3" }, 
          ["@keyword.return"] = { fg = "#6287bb" }, 
          Conditional = { fg = "#548ee3" }, 
          Constant = { fg = "#5478f6" }, 
          ["@constant.builtin"] = { fg = "#6276bb" }, 
          PreProc = { fg = "#5a90e8" }, 
          ["@function.builtin"] = { fg = "#5683fb" }, 
          ["@module"] = { fg = "#91c7e4" }, 
          ["@constructor"] = { fg = "#7784d5" }, 
          ["@variable.builtin"] = { fg = "#78aae7" }, 
          ["@punctuation.special"] = { fg = "#0868dc" }, 
          Type = { fg = "#6272ff" },
          ["@type.builtin"] = { fg = "#6272ff" },
          Keyword = { fg = "#657fda" },
        }
      },
    })
    vim.cmd("colorscheme nightfox")
    vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { fg = "#B19CD7", bold = true })
    vim.api.nvim_set_hl(0, "Statement", { fg = "#8ecdc8", italic = true })
    vim.api.nvim_set_hl(0, "Conceal", { fg = "#a8c4ec" }) 
    vim.api.nvim_set_hl(0, "texNormal", { fg = "#a8c4ec" }) 
    vim.api.nvim_set_hl(0, "texMathTextConcArg", { link = "Special" }) 
    vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { link = "Special" }) 
    end,
  }
}
