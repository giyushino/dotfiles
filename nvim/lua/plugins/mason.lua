return {
  {
    'williamboman/mason.nvim',
    lazy = false,
    config = function()
      require('mason').setup()
    end,
  },

  {
    'williamboman/mason-lspconfig.nvim',
    lazy = false,
    dependencies = { 'williamboman/mason.nvim' },
    config = function()
      require('mason-lspconfig').setup({
        --ensure_installed = { "pyright", "clangd", "texlab", "tinymist", "ocamllsp", "eslint", "vtsls", "html", "lua_ls", "pyrefly" },
        ensure_installed = { "clangd", "texlab", "tinymist", "ocamllsp", "eslint", "vtsls", "html", "lua_ls", "pyrefly" },
        automatic_installation = true,
      })
    end,
  },

  {
    'neovim/nvim-lspconfig',
    lazy = false,
    ft = { 'python', 'cpp', 'javascript', 'tex', 'ml', 'typ', 'html', 'lua' },
    config = function()
      local lspconfig = require('lspconfig')

      ---------------------------------------------------
      -- Python
      ---------------------------------------------------
      --vim.lsp.config['pyright'] = {}
      vim.lsp.config['pyrefly'] = {}

      ---------------------------------------------------
      -- C/C++
      ---------------------------------------------------
      vim.lsp.config['clangd'] = {
        cmd = { "clangd", "--header-insertion=iwyu", "--query-driver=/usr/bin/g++" },
        init_options = { clangdFileStatus = true },
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

      ---------------------------------------------------
      -- OCaml
      ---------------------------------------------------
      vim.lsp.config['ocamllsp'] = {}

      ---------------------------------------------------
      -- TeX
      ---------------------------------------------------
      vim.lsp.config['texlab'] = {}

      ---------------------------------------------------
      -- HTML
      ---------------------------------------------------
      vim.lsp.config['html'] = {
        on_attach = function(client)
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.documentRangeFormattingProvider = false
        end
      }

      ---------------------------------------------------
      -- TypeScript / JavaScript
      ---------------------------------------------------
      vim.lsp.config['vtsls'] = {}

      ---------------------------------------------------
      -- Tinymist
      ---------------------------------------------------
      if vim.lsp.config['tinymist'] then
        vim.lsp.config['tinymist'].on_attach = nil
      end

      ---------------------------------------------------
      -- ESLint
      ---------------------------------------------------
      if vim.lsp.config['eslint'] then
        vim.lsp.config['eslint'].on_attach = nil
      end

      ---------------------------------------------------
      -- Lua
      ---------------------------------------------------
      vim.lsp.config['luals'] = {
        cmd = { 'lua-language-server' },
        filetypes = { 'lua' },
        root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
        settings = {
          Lua = {
            runtime = { version = 'LuaJIT' },
            diagnostics = { globals = { 'vim' } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
          },
        },
      }
    end,
  },
}

