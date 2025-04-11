--[[return {
  {
    "maxmx03/fluoromachine.nvim",
    config = function()
      local fm = require 'fluoromachine'

      fm.setup {
        glow = false,
        theme = 'retrowave',  -- Your theme choice
        transparent = true,
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
--]]
--
--
--

return {
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
          SnacksDashboardHeader = { fg = "#FF6A6A", bg = "NONE" },  -- Malenia red for the header
          SnacksDashboardCenter = { fg = "#E8845A", bg = "NONE" },  -- Copper orange for center text
          SnacksDashboardShortcut = { fg = "#FFD700", bg = "NONE" }, -- Gold for shortcuts
          SnacksDashboardFooter = { fg = "#F0C3A2", bg = "NONE" },  -- Light tan for footer

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
          ["@string"] = { fg = "#F18437", bg = "NONE" },

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
--


--
--
--
--
--
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
--

--[[return {
    {
        'aliqyan-21/darkvoid.nvim',
        lazy = false, -- Load the theme immediately
        priority = 1000, -- Ensure it's loaded before other UI-related plugins
        config = function()
            require('darkvoid').setup({
                transparent = true,
                glow = true,
                show_end_of_buffer = true,

                colors = {
                    fg = "#c0c0c0",
                    bg = "#1c1c1c",
                    cursor = "#bdfe58",
                    line_nr = "#404040",
                    visual = "#303030",
                    comment = "#585858",
                    string = "#d1d1d1",
                    func = "#e1e1e1",
                    kw = "#f1f1f1",
                    identifier = "#b1b1b1",
                    type = "#a1a1a1",
                    type_builtin = "#c5c5c5",
                    -- type_builtin = "#8cf8f7", -- Old glowy blue option
                    search_highlight = "#1bfd9c",
                    operator = "#1bfd9c",
                    bracket = "#e6e6e6",
                    preprocessor = "#4b8902",
                    bool = "#66b2b2",
                    constant = "#b2d8d8",

                    plugins = {
                        gitsigns = true,
                        nvim_cmp = true,
                        treesitter = true,
                        nvimtree = true,
                        telescope = true,
                        lualine = true,
                        bufferline = true,
                        oil = true,
                        whichkey = true,
                        snacks = true, 
                        nvim_notify = true,
                    },

                    -- GitSigns colors
                    added = "#baffc9",
                    changed = "#ffffba",
                    removed = "#ffb3ba",

                    -- Pmenu colors
                    pmenu_bg = "#1c1c1c",
                    pmenu_sel_bg = "#1bfd9c",
                    pmenu_fg = "#c0c0c0",

                    -- EndOfBuffer color
                    eob = "#3c3c3c",

                    -- Telescope specific colors
                    border = "#585858",
                    title = "#bdfe58",

                    -- Bufferline specific colors
                    bufferline_selection = "#1bfd9c",

                    -- LSP diagnostics colors
                    error = "#dea6a0",
                    warning = "#d6efd8",
                    hint = "#bedc74",
                    info = "#7fa1c3",
                },
            })
          vim.cmd("colorscheme darkvoid")
        end
    }
}
--]]
