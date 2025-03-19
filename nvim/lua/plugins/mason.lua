return {
  {
    'williamboman/mason.nvim',
    lazy = false,  -- Ensure mason.nvim is loaded immediately
    config = function()
      require('mason').setup()  -- Basic setup for mason.nvim
    end,
  },

  {
    'williamboman/mason-lspconfig.nvim',
    lazy = true,
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { "pyright", "clangd", "texlab", "tinymist" },
      })
    end,
  },

  {
    'neovim/nvim-lspconfig',
    lazy = true,  -- Lazy load LSP servers
    ft = { 'python', 'cpp', 'javascript', 'tex' },  -- Load for these filetypes
    config = function()
      local lspconfig = require('lspconfig')

      -- BasedPyright setup with reduced error reporting
      lspconfig.pyright.setup{
        on_attach = function(client, bufnr) 
          require "lsp_signature".on_attach(signature_setup, bufnr)
        end,
      }

      -- Clangd setup
      lspconfig.clangd.setup{
        on_attach = function(client, bufnr)
          -- Custom actions for Clangd
        end,
      }

      -- TexLab setup
      lspconfig.texlab.setup{
        on_attach = function(client, bufnr)
          -- Custom actions for TexLab
        end,
      }

      -- Add any other LSP setups here...
    end,
  },
}

