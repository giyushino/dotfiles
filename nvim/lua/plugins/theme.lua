local colors = require("colors")

if colors.name == "blue" then
  -- Nightfox setup for blue theme
  return {
    {
      colors.plugin,
      priority = 1000,
      config = function()
        -- Build highlight groups from colors
        local groups = {}
        for name, color in pairs(colors.highlights) do
          if type(color) == "string" then
            groups[name] = { fg = color }
          else
            groups[name] = color
          end
        end

        require("nightfox").setup({
          options = {
            compile_path = vim.fn.stdpath("cache") .. "/nightfox",
            compile_file_suffix = "_compiled",
            transparent = true,
            terminal_colors = true,
            dim_inactive = false,
            module_default = true,
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
          },
          palettes = {},
          specs = {},
          groups = {
            nightfox = groups,
          },
        })

        vim.cmd("colorscheme " .. colors.colorscheme)

        -- Apply extra highlights
        for name, hl in pairs(colors.extra_highlights) do
          vim.api.nvim_set_hl(0, name, hl)
        end

        -- Links
        vim.api.nvim_set_hl(0, "texMathTextConcArg", { link = "Special" })
        vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { link = "Special" })
      end,
    }
  }
else
  -- Monoglow setup for black theme
  return {
    {
      colors.plugin,
      lazy = false,
      priority = 1000,
      config = function()
        require("monoglow").setup({})
        vim.cmd("colorscheme " .. colors.colorscheme)

        -- Apply highlights
        for name, hl in pairs(colors.highlights) do
          if type(hl) == "table" then
            hl.bg = hl.bg or "None"
            vim.api.nvim_set_hl(0, name, hl)
          end
        end
      end,
    }
  }
end
