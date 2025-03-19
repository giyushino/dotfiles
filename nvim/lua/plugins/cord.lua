return {
  {
    'vyfor/cord.nvim',  -- Specify the plugin here
    config = function()
      -- Customize the cord.nvim plugin setup
      require('cord').setup({
        enabled = true,
        log_level = vim.log.levels.OFF,
        editor = {
          client = 'neovim',  -- Change the client name here
          tooltip = 'neoFUCK',
          icon = nil,
        },
        display = {
          theme = 'default',
          flavor = 'dark', 
          swap_fields = false,
          swap_icons = true,
        },
        timestamp = {
          enabled = true,
          reset_on_idle = false,
          reset_on_change = false,
        },
        idle = {
          enabled = true,
          timeout = 300000,
          show_status = true,
          ignore_focus = true,
          unidle_on_focus = true,
          smart_idle = true,
          details = 'Idling',
          state = nil,
          tooltip = '💤',
          icon = nil,
        },
        text = {
          workspace = function(opts) return 'in ' .. opts.workspace end,
          viewing = function(opts) return 'viewing ' .. opts.filename end,
          editing = function(opts) return 'fucking up ' .. opts.filename end,  -- Custom text for editing
          file_browser = function(opts) return 'browsing files in ' .. opts.name end,
          plugin_manager = function(opts) return 'managing plugins in ' .. opts.name end,
          lsp = function(opts) return 'configuring LSP in ' .. opts.name end,
          docs = function(opts) return 'reading ' .. opts.name end,
          vcs = function(opts) return 'committing changes in ' .. opts.name end,
          notes = function(opts) return 'taking notes in ' .. opts.name end,
          debug = function(opts) return 'debugging in ' .. opts.name end,
          test = function(opts) return 'testing in ' .. opts.name end,
          diagnostics = function(opts) return 'fixing problems in ' .. opts.name end,
          games = function(opts) return 'playing ' .. opts.name end,
          terminal = function(opts) return 'running commands in ' .. opts.name end,
          dashboard = 'neoFUCK',
        },
        buttons = nil,
        assets = nil,
        variables = nil,
        hooks = {
          ready = nil,
          shutdown = nil,
          pre_activity = nil,
          post_activity = nil,
          idle_enter = nil,
          idle_leave = nil,
          workspace_change = nil,
        },
        plugins = nil,
        advanced = {
          plugin = {
            autocmds = true,
            cursor_update = 'on_hold',
            match_in_mappings = true,
          },
          server = {
            update = 'fetch',
            pipe_path = nil,
            executable_path = nil,
            timeout = 300000,
          },
          discord = {
            reconnect = {
              enabled = false,
              interval = 5000,
              initial = true,
            },
          },
        },
      })
    end,
  },
}

