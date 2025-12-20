return {
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    config = function()
      local cmp = require('cmp')
      local ts_utils = require('nvim-treesitter.ts_utils') -- Load Treesitter utilities

      cmp.setup({
        completion = {
          autocomplete = { cmp.TriggerEvent.TextChanged, cmp.TriggerEvent.InsertLeave },
        },
        mapping = {
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<Tab>'] = cmp.mapping.confirm({ select = true }),
          ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
          ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
          ['<C-m>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        },
        formatting = {
          format = function(entry, item)
            return item
          end,
        },
        sources = cmp.config.sources({
          {
            name = 'nvim_lsp',
            entry_filter = function(entry)
              return #entry.completion_item.label <= 80
            end,
          },
          {
            name = 'buffer',
            keyword_length = 3,
            option = { max_item_count = 10 },
            entry_filter = function(entry)
              return #entry.completion_item.label <= 80
            end,
          },
          { name = 'path' },
          { name = 'luasnip', keyword_length = 2 },
        }),
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
      })
    end,
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    lazy = true,
    event = 'InsertEnter',
  },
  {
    'hrsh7th/cmp-buffer',
    lazy = true,
    event = 'InsertEnter',
  },
  {
    'hrsh7th/cmp-path',
    lazy = true,
    event = 'InsertEnter',
  },
  {
    'L3MON4D3/LuaSnip',
    lazy = true,
    event = 'InsertEnter',
  },
}

