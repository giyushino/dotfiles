return {
    {
      "andweeb/presence.nvim",
      event = "VeryLazy", -- or use "BufReadPost" if you want it active when opening files
      config = function()
        require("presence").setup({
          auto_update         = true,
          neovim_image_text   = "NEOFUCK",
          main_image          = "neovim",
          client_id           = "793271441293967371",
          log_level           = nil,
          debounce_timeout    = 10,
          enable_line_number  = false,
          blacklist           = {},
          buttons             = true,
          file_assets         = {},
          show_time           = true,

          editing_text        = "fucking up %s",
          file_explorer_text  = "browsing %s",
          git_commit_text     = "committing changes",
          plugin_manager_text = "managing plugins",
          reading_text        = "reading %s",
          workspace_text      = "working on %s",
          line_number_text    = "line %s out of %s",
        })
      end,
    }
}
