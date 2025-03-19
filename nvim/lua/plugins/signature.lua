return {
    {
      "ray-x/lsp_signature.nvim",
      event = "InsertEnter",
      opts = {
        bind = true,
        handler_opts = {
          border = "rounded"
        }, 
        floating_window = true, 
        floating_window_off_x = 20, 
        floating_window_off_y = 0,
        --[[
        hint_scheme = "String",
        hint_inline = function() return 'eol' end,
        hint_enable = true,
        --]]
        zindex = 50,
        transparency = 100, 
      },
      config = function(_, opts) require'lsp_signature'.setup(opts)
        require('lsp_signature').setup(opts)
      end
    }
}
