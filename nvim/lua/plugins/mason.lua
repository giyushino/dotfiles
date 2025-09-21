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
        ensure_installed = { "pyright", "clangd", "texlab", "tinymist", "ocamllsp", "eslint", "vtsls", "html-lsp"},
      })
    end,
  },

  {
    'neovim/nvim-lspconfig',
    lazy = true,  -- Lazy load LSP servers
    ft = { 'python', 'cpp', 'javascript', 'tex', 'ml', 'typ', 'html' },  -- Load for these filetypes
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

      lspconfig.ocamllsp.setup{
        on_attach = function(client, bufnr)
        end,
     }

      -- TexLab setup
      lspconfig.texlab.setup{
        on_attach = function(client, bufnr)
          -- Custom actions for TexLab
        end,
      }

      lspconfig.clangd.setup {
        on_attach = function(client, bufnr)
          -- Custom actions for Clangd (keep your existing actions here)
        end,
        cmd = { "clangd", "--header-insertion=iwyu", "--query-driver=/usr/bin/g++" },
        init_options = {
          clangdFileStatus = true,
        },
        settings = {
          clangd = {
            arguments = {
              "-I/opt/libtorch/include",
              "-I/opt/libtorch/include/torch/csrc/api/include",
              "-std=c++17",
              "-D_GLIBCXX_USE_CXX11_ABI=1",
            },
          },
        },
      }
      lspconfig.html.setup{
        on_attach = function(client, bufnr)
          -- Custom actions for TexLab
        end,
      }
      lspconfig.vtsls.setup{
        on_attach = function(client, bufnr)
          -- Custom actions for TexLab
        end,
      }
      -- Add any other LSP setups here...
    end,
  },
}

