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
          ["@variable.parameter"] = { fg = "#949dff" }, 
          ["@parameter"] = { fg = "#949dff" }, 
          Paramter = { fg = "#949dff" }, 
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


--return {
--  {
--    "vague2k/vague.nvim",
--
--    config = function()
--      vim.cmd.colorscheme("vague")
--      require("vague").setup({
--        transparent = true,
--        bold = true,
--        italic = true,
--        style = {
--          boolean = "bold",
--          number = "none",
--          float = "none",
--          error = "bold",
--          comments = "italic",
--          conditionals = "none",
--          functions = "none",
--          headings = "bold",
--          operators = "none",
--          strings = "italic",
--          variables = "none",
--          keywords = "none",
--          keyword_return = "italic",
--          keywords_loop = "none",
--          keywords_label = "none",
--          keywords_exception = "none",
--          builtin_constants = "bold",
--          builtin_functions = "none",
--          builtin_types = "bold",
--          builtin_variables = "none",
--        },
--        plugins = {
--          cmp = {
--            match = "bold",
--            match_fuzzy = "bold",
--          },
--          dashboard = {
--            footer = "italic",
--          },
--          lsp = {
--            diagnostic_error = "bold",
--            diagnostic_hint = "none",
--            diagnostic_info = "italic",
--            diagnostic_ok = "none",
--            diagnostic_warn = "bold",
--          },
--          neotest = {
--            focused = "bold",
--            adapter_name = "bold",
--          },
--          telescope = {
--            match = "bold",
--          },
--        },
--        on_highlights = function(highlights, colors) end,
--        colors = {
--          bg = "#141415",
--          fg = "#cdcdcd",
--          floatBorder = "#878787",
--          line = "#252530",
--          comment = "#606079",
--          builtin = "#b4d4cf",
--          func = "#c48282",
--          string = "#e8b589",
--          number = "#e0a363",
--          property = "#c3c3d5",
--          constant = "#aeaed1",
--          parameter = "#bb9dbd",
--          visual = "#333738",
--          error = "#d8647e",
--          warning = "#f3be7c",
--          hint = "#7e98e8",
--          operator = "#90a0b5",
--          keyword = "#6e94b2",
--          type = "#9bb4bc",
--          search = "#405065",
--          plus = "#7fa563",
--          delta = "#f3be7c",
--        },
--      })
--    end,
--  },
--}

--return {
--  {
--    "bluz71/vim-moonfly-colors",
--    name = "moonfly",
--    lazy = false,
--    priority = 1000,
--    config = function()
--      vim.g.moonflyTransparent = true
--      vim.cmd.colorscheme("moonfly")
--      vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#6dd5a2", bg = "NONE" })
--      --vim.api.nvim_set_hl(0, "Function", { fg = "#72ffb5", bold = true })
--      vim.api.nvim_set_hl(0, "Function", { fg = "#7cd68d", bold = true})
--      vim.api.nvim_set_hl(0, "Keyword", { fg = "#bba8ff", bold = true })
--      vim.api.nvim_set_hl(0, "Boolean", { fg = "#73B9EE", bold = true })
--      vim.api.nvim_set_hl(0, "texEnvArgName", { fg = "#B19CD7", bold = true })
--      vim.api.nvim_set_hl(0, "Comment", { fg = "#B19CD7", bold = true })
--      vim.api.nvim_set_hl(0, "texMathZoneTD", { fg = "#73B9EE", bold = true })
--      vim.api.nvim_set_hl(0, "Conditional", { fg = "#72ffb5", italic = true })
--      --vim.api.nvim_set_hl(0, "Statement", { fg = "#1dbc60", italic = true })
--      vim.api.nvim_set_hl(0, "Statement", { fg = "#72ffb5", italic = true })
--      vim.api.nvim_set_hl(0, "Repeat", { fg = "#77dd77", italic = true })
--      vim.api.nvim_set_hl(0, "@keyword.exception.python", { fg = "#b59dfa", bold = true })
--      vim.api.nvim_set_hl(0, "@keyword.operator.python", { fg = "#99cced", bold = true })
--      vim.api.nvim_set_hl(0, "@keyword.import.python", { fg = "#9C89ff", bold = true })
--      vim.api.nvim_set_hl(0, "@comment.python", { fg = "#73B9EE", bold = true })
--      vim.api.nvim_set_hl(0, "texComment", { fg = "#73B9EE", bold = true })
--      vim.api.nvim_set_hl(0, "string", { fg = "#ADD8E6" })
--    end,
--  },
--}


--[[
return {
  {
    "shaunsingh/nord.nvim",
    name = "nord",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("nord")
      vim.g.nord_disable_background = true
    end,
  },
}
--]]

--[[
return {
  "catppuccin/nvim", -- fix: was "catpuccin/nvim"
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "auto",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true,
      show_end_of_buffer = false,
      term_colors = false,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      no_italic = false,
      no_bold = false,
      no_underline = false,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      },
    })

    vim.cmd.colorscheme("catppuccin")
    vim.api.nvim_set_hl(0, "String", { fg = "#cba6f7" })
    vim.api.nvim_set_hl(0, "Keyword", { fg = "#ff8800", bold = true })     
    vim.api.nvim_set_hl(0, "Boolean", { fg = "#afeeee", italic = true })
  end
}
--]]
--i like this one a lot
--[[return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,  -- Load immediately
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Set up the colorscheme configuration
        transparent = true,
        saturation = 0.4,
        italic_comments = false,
        borderless_pickers = false,
        terminal_colors = true,
        cache = true,

        -- Override highlight groups with the provided theme colors
        highlights = {
          -- Strings
          String = { fg = "#6dd5a2", bg = "NONE" },
          Statement = { fg = "#6dd5a2", bg = "NONE" },
          SnacksDashboardHeader = { fg = "#6dd5a2", bg = "NONE" },  -- Malenia red for the header
          SnacksDashboardCenter = { fg = "#E8845A", bg = "NONE" },  -- Copper orange for center text
          SnacksDashboardShortcut = { fg = "#FFD700", bg = "NONE" }, -- Gold for shortcuts
          SnacksDashboardFooter = { fg = "#F0C3A2", bg = "NONE" },  -- Light tan for footer
          SnacksExplorerDir = { fg = "#F0C3A2", bg = "NONE" },  -- Light tan for footer

          -- Text
          Normal = { fg = "#6dd5a2", bg = "NONE" },
          Keywords = { fg = "#b16dd5", bg = "NONE" },
          ["@function.builtin"] = { fg = "#b16dd5", bg = "NONE" }, -- For built-in functions like 'range'
          ["@keyword.operator"] = { fg = "#ca86e3", bg = "NONE" }, -- Adjusted purple for 'in' and other operators

          -- Variables
          Identifier = { fg = "#F8F8F2", bg = "NONE" },

          -- Constants and booleans
          Constant = { fg = "#FF5555", bg = "NONE" },
          Boolean = { fg = "#FF5555", bg = "NONE" },
          Number = { fg = "#FF5555", bg = "NONE" },
          Float = { fg = "#FF5555", bg = "NONE" },

          -- Functions and methods
          Function = { fg = "#fa8071", bg = "NONE" },
          Method = { fg = "#fa8071", bg = "NONE" },

          -- Triple-quoted strings (docstrings)
          ["@string.documentation"] = { fg = "#6dd5a2", bg = "NONE" },

          -- Decorators and params
          ["@attribute"] = { fg = "#FFFF00", bg = "NONE" },
          ["@parameter"] = { fg = "#FFA500", bg = "NONE" },  -- Orange for arguments

          -- Classes and types (Set to Pink)
          Type = { fg = "#FF69B4", bg = "NONE" },  -- Classes and types to pink
          ["@type"] = { fg = "#FF69B4", bg = "NONE" },  -- Ensure this matches
          ["@type.builtin"] = { fg = "#FF69B4", bg = "NONE" },  -- Ensure this matches

          -- Variables (builtin)
          ["@variable.builtin"] = { fg = "#add8e6", bg = "NONE" },

          -- Object and fields
          ["@field"] = { fg = "#8BE9FD", bg = "NONE" },
          ["@property"] = { fg = "#8BE9FD", bg = "NONE" },

          -- Constructor
          Constructor = { fg = "#FFFF00", bg = "NONE" },

          -- Keywords and built-in functions
          Keyword = { fg = "#6dd5a2", bg = "NONE" },
          ["@keyword"] = { fg = "#6dd5a2", bg = "NONE" },
          ["@keyword.import"] = { fg = "#6dd5a2", bg = "NONE" },  -- Make 'import' the same color as triple quotes
          ["@function.builtin"] = { fg = "#FF69B4", bg = "NONE" },

          -- Strings inside a function
          ["@string"] = { fg = "#6dd5a2", bg = "NONE" },

          -- Variable names inside functions should be baby blue
          ["@variable"] = { fg = "#bfd6e8", bg = "NONE" },  -- Baby blue for variables inside functions

          -- Operators and punctuation
          Operator = { fg = "#FF69B4", bg = "NONE" },
          Punctuation = { fg = "#F8F8F2", bg = "NONE" },
          Bracket = { fg = "#AA69ED", bg = "NONE" },  -- Brackets in darker purple

          -- Add specific highlight for function arguments
          ["@parameter"] = { fg = "#FFA500", bg = "NONE" },  -- Orange for function arguments

          -- Highlight for import module names (like 'random')
          ["@module"] = { fg = "#A4D8FF", bg = "NONE" },  -- Baby blue for module names like 'random'

          -- Specific override for 'range' function to purple
          ["@function.range"] = { fg = "#AA69ED", bg = "NONE" },  -- Override range to purple
        },

        -- Define general color palette
        colors = {
          bg = "#1e1e1e",
          fg = "#F8F8F2",
          black = "#282a36",
          green = "#6dd5a2",
          red = "#FF5555",
          yellow = "#fdca00",
          blue = "#6272A4",
          magenta = "#AA69ED",  -- Pink for various elements (classes)
          cyan = "#8BE9FD",
          orange = "#FF5555",   --"#FFA500",
          baby_blue = "#A4D8FF",
        },

        -- Enable extensions if needed
        extensions = {
          telescope = true,
          notify = true,
          mini = true,
          snacks = true,
        },
      })

      -- Apply the colorscheme
      vim.cmd("colorscheme cyberdream")
    end
  }
}
--]]
--
--[[
return {
    { 
    "maxmx03/fluoromachine.nvim",
    config = function()
      local fm = require 'fluoromachine'

      fm.setup {
        glow = false,
        theme = 'retrowave',  -- Your theme choice
        transparent = false, --true
        plugins = {
          neotree = true,
          snacks = true,
        }
      } 

      -- Apply the theme after configuring the plugin
      vim.cmd.colorscheme 'fluoromachine'
    end,
  },

  -- Other plugins...
}
--
--
--]]

--
--
--
--
--]]
--[[return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = true,
        saturation = 0.4,
        italic_comments = false,
        borderless_pickers = false,
        terminal_colors = true,
        cache = true,

        highlights = {
          -- Strings
          SnacksDashboardHeader = { fg = "#FF6A6A", bg = "NONE" },  -- Malenia red for the header
          String = { fg = "#FF6A6A", bg = "NONE" },  -- Malenia-inspired red
          Special = { fg = "#FF6A6A", bg = "NONE" },       -- Gold for special characters
          SpecialChar = { fg = "#FF6A6A", bg = "NONE" },
          Statement = { fg = "#FF6A6A", bg = "NONE" },
          SnacksStartupTime = { fg = "#FF6A6A", bg = "NONE" }, -- Gold for startup time
          SnacksStartupStats = { fg = "#FF6A6A", bg = "NONE" }, -- Gold for startup stats
          ["@spell"] = { fg = "#FF6A6A", bg = "NONE" },
         
          -- Text
          Normal = { fg = "#F0C3A2", bg = "NONE" },  -- Light tan for normal text
          Keywords = { fg = "#E6B800", bg = "NONE" },  -- Richer golden yellow
          ["@function.builtin"] = { fg = "#E6B800", bg = "NONE" },
          ["@keyword.operator"] = { fg = "#FF6A6A", bg = "NONE" },

          -- Variables
          Identifier = { fg = "#FFC182", bg = "NONE" },  -- Warmer peach for identifiers

          -- Constants and booleans
          Constant = { fg = "#C84343", bg = "NONE" },  -- Deeper blood red for constants
          Boolean = { fg = "#C84343", bg = "NONE" },
          Number = { fg = "#C84343", bg = "NONE" },
          Float = { fg = "#C84343", bg = "NONE" },

          -- Functions and methods - new copper/bronze tone
          Function = { fg = "#E8845A", bg = "NONE" },  -- Copper orange for functions
          Method = { fg = "#E8845A", bg = "NONE" },

          -- Triple-quoted strings (docstrings)
          ["@string.documentation"] = { fg = "#FF8080", bg = "NONE" },  -- Lighter scarlet

          -- Decorators and params
          ["@attribute"] = { fg = "#FFD27F", bg = "NONE" },  -- Bright golden yellow
          ["@parameter"] = { fg = "#FF8870", bg = "NONE" },  -- Coral red

          -- Classes and types
          Type = { fg = "#E67E22", bg = "NONE" },  -- Burnt orange
          ["@type"] = { fg = "#E67E22", bg = "NONE" },
          ["@type.builtin"] = { fg = "#E67E22", bg = "NONE" },

          -- Variables (builtin)
          ["@variable.builtin"] = { fg = "#DAA520", bg = "NONE" },  -- Goldenrod

          -- Object and fields
          ["@field"] = { fg = "#FFBB7C", bg = "NONE" },  -- Light apricot
          ["@property"] = { fg = "#FFBB7C", bg = "NONE" },

          -- Constructor
          Constructor = { fg = "#FFD700", bg = "NONE" },  -- Pure gold

          -- Keywords and built-in functions
          Keyword = { fg = "#FF7066", bg = "NONE" },  -- Lighter scarlet
          ["@keyword"] = { fg = "#FF7066", bg = "NONE" },
          ["@keyword.import"] = { fg = "#FF7066", bg = "NONE" },
          ["@function.builtin"] = { fg = "#E8845A", bg = "NONE" },

          -- Strings inside a function
          ["@string"] = { fg = "#FF9677", bg = "NONE" },  -- Salmon orange

          -- Variable names inside functions
          ["@variable"] = { fg = "#FFB366", bg = "NONE" },  -- Soft orange

          -- Operators and punctuation
          Operator = { fg = "#FF8B8B", bg = "NONE" },  -- Lighter red
          Punctuation = { fg = "#F0C3A2", bg = "NONE" },
          Bracket = { fg = "#B84040", bg = "NONE" },  -- Darker red brackets

          -- Module imports
          ["@module"] = { fg = "#F0C3A2", bg = "NONE" },  -- Pure gold for modules
        },

        colors = {
          bg = "#1C1C1C",
          fg = "#F0C3A2",
          black = "#282a36",
          green = "#6dd5a2",
          red = "#FF6A6A",
          yellow = "#E6B800",  -- Richer golden yellow
          blue = "#fa8071",
          magenta = "#f40d30",  -- Copper orange
          cyan = "#FFBB7C",  -- Light apricot
          orange = "#E67E22",  -- Burnt orange
          baby_blue = "#FFD27F",  -- Bright golden yellow
        },

        extensions = {
          telescope = true,
          notify = true,
          mini = true,
          snacks = true,
        },
      })

      vim.cmd("colorscheme cyberdream")
    end
  }
}
--
--]]


