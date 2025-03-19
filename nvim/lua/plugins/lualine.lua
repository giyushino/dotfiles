return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },  -- Add a comma here
        event = "VeryLazy",
        config = function()
            -- You can use the 'fluoromachine' theme for lualine
            require('lualine').setup {
                options = {
                    icons_enabled = true,
                    theme = 'auto',  -- Use the fluoromachine theme
                    component_separators = { left = '', right = ''},
                    section_separators = { left = '', right = ''},
                    disabled_filetypes = {
                        statusline = {},
                        winbar = {},
                    },
                    ignore_focus = {},
                    always_divide_middle = true,
                    always_show_tabline = true,
                    globalstatus = false,
                    refresh = {
                        statusline = 100,
                        tabline = 100,
                        winbar = 100,
                    }
                },
                sections = {
                    lualine_a = {
                        { 'mode', color = { fg = '#FF6666' } }  -- Light red color for mode section
                    },
                    lualine_b = {
                        { 'branch', color = { fg = '#FF6666' } },
                        { 'diff', color = { fg = '#FF6666' } },
                        { 'diagnostics', color = { fg = '#FF6666' } }
                    },
                    lualine_c = {
                        { 'filename', color = { fg = '#FF6666' } }
                    },
                    lualine_x = {
                        { 'encoding', color = { fg = '#FF6666' } },
                        { 'fileformat', color = { fg = '#FF6666' } },
                        { 'filetype', color = { fg = '#FF6666' } }
                    },
                    lualine_y = {
                        { 'progress', color = { fg = '#FF6666' } }  -- Light red for progress
                    },
                    lualine_z = {
                        { 'location', color = { fg = '#FF6666' } }
                    }
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {
                        { 'filename', color = { fg = '#FF6666' } }
                    },
                    lualine_x = {
                        { 'location', color = { fg = '#FF6666' } }
                    },
                    lualine_y = {},
                    lualine_z = {}
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {}
            }
        end,
    },
}

