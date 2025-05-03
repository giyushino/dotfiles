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
                        { 'mode', color = { fg = '#000000', gui = 'bold' } }  -- Light red color for mode section
                    },
                    lualine_b = {
                        { 'branch', color = { fg = '#CF9FFF' } },
                        { 'diff', color = { fg = '#CF9FFF' } },
                        { 'diagnostics', color = { fg = '#CF9FFF' } }
                    },
                    lualine_c = {
                        { 'filename', color = { fg = '#CF9FFF' } }
                    },
                    lualine_x = {
                        { 'encoding', color = { fg = '#CF9FFF' } },
                        { 'fileformat', color = { fg = '#CF9FFF' } },
                        { 'filetype', color = { fg = '#CF9FFF' } }
                    },
                    lualine_y = {
                        { 'progress', color = { fg = '#CF9FFF' } }  -- Light red for progress
                    },
                    lualine_z = {
                        { 'location', color = { fg = '#000000', gui = 'bold' } }
                    }
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {
                        { 'filename', color = { fg = '#CF9FFF' } }
                    },
                    lualine_x = {
                        { 'location', color = { fg = '#CF9FFF' } }
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

