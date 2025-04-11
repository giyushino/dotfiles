return {
  "folke/snacks.nvim",  -- Plugin path
  priority = 1000,       -- Loading priority
  lazy = false,          -- Make the plugin load immediately
  config = function()
    -- Correctly call Snacks.nvim's setup with the configuration
    require('snacks').setup({
    explorer = {
        hide_dotfiles = false,
    }, 
    dashboard = {
    width = 60,
    row = nil,
    col = nil,
    pane_gap = 4,
    autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
    preset = {
      keys = {
        { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
        { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
        { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
        { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
        { icon = " ", key = "s", desc = "Restore Session", section = "session" },
        { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
        { icon = " ", key = "q", desc = "Quit", action = ":qa" },
      },
    header = [[

     █████╗ ██╗     ██╗      █████╗ ███╗   ██╗
    ██╔══██╗██║     ██║     ██╔══██╗████╗  ██║
    ███████║██║     ██║     ███████║██╔██╗ ██║
    ██╔══██║██║     ██║     ██╔══██║██║╚██╗██║
    ██║  ██║███████╗███████╗██║  ██║██║ ╚████║
    ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝
        ]],
      },   
    sections = {
      { section = "header" },
      {
        pane = 2,
        section = "terminal",
        cmd = "echo I'm smart enough to know that I'm dumb - Richard Feynman",
        height = 1,
        padding = 9,
       },    
      { section = "keys", gap = 1, padding = 1, autohide = true },
      { pane = 2, icon = " ", title = "Allan's Recent Files", section = "recent_files", limit = 10, indent = 2, padding = 2, height = 10, }, 	  {section = "startup"},
    },
  },
  })
  end,
}
