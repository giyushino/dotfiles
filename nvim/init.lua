vim.g.mapleader = ","
vim.g.maplocalleader = ","
vim.api.nvim_set_keymap('n', '<Space>', ':w<CR>', { noremap = true, silent = true })
vim.opt.tabstop = 4       -- Set the number of spaces a tab character occupies
vim.opt.shiftwidth = 4    -- Set the number of spaces for indentation
vim.opt.expandtab = true
vim.opt.showmode = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'no'
vim.opt.swapfile = false
--vim.opt.concealcursor = "n"
--vim.opt["guicursor"] = "" 

vim.opt.hlsearch = false
vim.opt.incsearch = true 
vim.opt.smartcase = true
vim.opt.ignorecase = true

--vim.g.neovide_opacity = 0.3
--vim.g.transparency = 0
--vim.g.neovide_background_color = "C3B1E1" 

vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#FF69B4", bg = "NONE" }) -- Pink folder names
vim.api.nvim_set_keymap("v", "<leader>r", ":s///g<Left><Left><Left>", { noremap = true })

if vim.g.neovide == true then
  vim.api.nvim_set_keymap("n", "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
  vim.g.neovide_background_color = "#1e1e2e" 
  vim.g.neovide_opacity = 0.7
  vim.g.neovide_padding_left = 20
  vim.g.neovide_padding_top = 20
  vim.g.terminal_color_0 = "#45475a"
  vim.g.terminal_color_1 = "#f38ba8"
  vim.g.terminal_color_2 = "#a6e3a1"
  vim.g.terminal_color_3 = "#f9e2af"
  vim.g.terminal_color_4 = "#89b4fa"
  vim.g.terminal_color_5 = "#f5c2e7"
  vim.g.terminal_color_6 = "#94e2d5"
  vim.g.terminal_color_7 = "#bac2de"
  vim.g.terminal_color_8 = "#585b70"
  vim.g.terminal_color_9 = "#f38ba8"
  vim.g.terminal_color_10 = "#a6e3a1"
  vim.g.terminal_color_11 = "#f9e2af"
  vim.g.terminal_color_12 = "#89b4fa"
  vim.g.terminal_color_13 = "#f5c2e7"
  vim.g.terminal_color_14 = "#94e2d5"
  vim.g.terminal_color_15 = "#a6adc8" end

vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '"', '""<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '$', '$$<Left>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '.', '<Nop>', { noremap = true, silent = true })

vim.opt.clipboard:append({ "unnamed", "unnamedplus" })

vim.api.nvim_set_keymap('n', 'f', ':lua Snacks.dashboard.pick()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'g', ":lua Snacks.dashboard.pick('live_grep')<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>;', ':ToggleTerm<CR>', { noremap = true, silent = true })

--vim.keymap.set('n', '<leader>l', ':lua Snacks.dashboard()<CR>', { noremap = true, silent = true, desc = "Open Snacks dashboard" })
vim.keymap.set('n', '<leader>c', ':Copilot enable<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>x', ':Copilot disable<CR>', { noremap = true, silent = true })





vim.keymap.set('i', '<C-F>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true
--vim.api.nvim_set_keymap('n', '<leader>m', ':lua Snacks.picker.explorer({ show_hidden = true })<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = "#fab387" }) -- or any hex color you like



function RunScript()
  local filetype = vim.bo.filetype
  local current_file = vim.fn.expand('%:p')  
  local current_dir = vim.fn.expand('%:p:h')   

  if filetype == 'python' then
    local lines = vim.fn.getline(1, 5)
    local env_name
    local use_uv = false
    local shebang

    for _, line in ipairs(lines) do
      if line:match("^#!") then
        shebang = line:match("^#!%s*(.+)")
        break 
      elseif line:match("#%s*uv") then
        use_uv = true
      elseif not env_name then
        env_name = line:match("#%s*conda_env:%s*(%S+)")
      end
    end

    -- Determine the Python executable
    local python_cmd
    if shebang then
      python_cmd = shebang
    elseif use_uv then
      -- Use the .venv Python path when # uv is detected
      python_cmd = GetVenvPythonPath()
      if not python_cmd then
        print("Could not find .venv Python path")
        return
      end
    elseif env_name then
      python_cmd = "/home/allan/miniconda3/envs/" .. env_name .. "/bin/python"
    else
      python_cmd = "/home/allan/miniconda3/bin/python"  
    end

    vim.cmd('!' .. python_cmd .. ' ' .. vim.fn.shellescape(current_file))
  
  elseif filetype == 'javascript' then
    vim.cmd('!cd ' .. current_dir .. ' && node ' .. vim.fn.shellescape(current_file))
  
  elseif filetype == "tex" then
    vim.cmd('VimtexCompile')

  elseif filetype == 'cpp' then
    -- Compile and run C++ file
    local filename = vim.fn.expand('%:t')  
    local output_name = filename:match("(.+)%..+$")  
    vim.cmd('!cd ' .. current_dir .. ' && g++ ' .. filename .. ' -o ' .. output_name)
    vim.cmd('!cd ' .. current_dir .. ' && ./' .. output_name) 
    
  elseif filetype == "cuda" then 
    local filename = vim.fn.expand('%:t')
    local output_name = filename:match("(.+)%..+$")
    vim.cmd('!cd ' .. current_dir .. ' && nvcc ' .. filename .. ' -o ' .. output_name)
    vim.cmd('!cd ' .. current_dir .. ' && ./' .. output_name)  

  else
    print("Unsupported file type")
  end
end


vim.api.nvim_set_keymap('n', '<leader>.', ':lua RunScript()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

-- Ensure lazy.nvim is installed and set it up
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "https://github.com/folke/lazy.nvim.git", lazypath })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  spec = {
    { import = "plugins" },  -- Import plugins from 'plugins/init.lua'
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
})
 

--vim.api.nvim_set_hl(0, "Comment", { fg = "#dfc5fe", italic = false }) 
--vim.api.nvim_set_hl(0, 'LineNr', { fg = "#64e3a1" })
--vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "#2eb774", bold = true })
--vim.api.nvim_set_keymap('n', '<C-[>', ':lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })


vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })


