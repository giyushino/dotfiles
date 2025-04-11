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


-- Override the 'y' key in NvimTree to copy the full file path
vim.api.nvim_set_keymap("v", "<leader>r", ":s///g<Left><Left><Left>", { noremap = true })

vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '"', '""<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '$', '$$<Left>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '.', '<Nop>', { noremap = true, silent = true })

vim.opt.clipboard:append({ "unnamed", "unnamedplus" })

vim.api.nvim_set_keymap('n', 'f', ':lua Snacks.dashboard.pick()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'g', ":lua Snacks.dashboard.pick('live_grep')<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>l', ':lua Snacks.dashboard()<CR>', { noremap = true, silent = true, desc = "Open Snacks dashboard" })
--vim.api.nvim_set_keymap('n', '<leader>m', ':lua Snacks.picker.explorer({ show_hidden = true })<CR>', { noremap = true, silent = true })

function RunScript()
  local filetype = vim.bo.filetype
  local current_file = vim.fn.expand('%:p')  -- Full path to current file
  local current_dir = vim.fn.expand('%:p:h')  -- Directory of the current file 

  if filetype == 'python' then
    -- Read the first few lines to find shebang, uv, or conda_env
    local lines = vim.fn.getline(1, 5)
    local env_name
    local use_uv = false
    local shebang

    for _, line in ipairs(lines) do
      if line:match("^#!") then
        shebang = line:match("^#!%s*(.+)")
        break -- Shebang takes priority over other methods
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
      python_cmd = "/home/allan/miniconda3/bin/python"  -- Default to base Python
    end

    -- Run the script
    vim.cmd('!' .. python_cmd .. ' ' .. vim.fn.shellescape(current_file))
  
  elseif filetype == 'javascript' then
    vim.cmd('!cd ' .. current_dir .. ' && node ' .. vim.fn.shellescape(current_file))
  
  elseif filetype == "tex" then
    vim.cmd('VimtexCompile')

  elseif filetype == 'cpp' then
    -- Compile and run C++ file
    local filename = vim.fn.expand('%:t')  -- Get the filename (e.g., main.cpp)
    local output_name = filename:match("(.+)%..+$")  -- File name without extension (e.g., main)
    vim.cmd('!cd ' .. current_dir .. ' && g++ ' .. filename .. ' -o ' .. output_name)
    vim.cmd('!cd ' .. current_dir .. ' && ./' .. output_name)  -- Run compiled binary

  else
    print("Unsupported file type")
  end
end


function RunScript2()
  local filetype = vim.bo.filetype
  local current_dir = vim.fn.expand('%:p:h')  -- Get the directory of the current file
  
  if filetype == 'python' then
    -- Read the first few lines to find the Conda env comment
    local lines = vim.fn.getline(1, 5)
    local env_name

    -- Look for the Conda environment specified in the comment
    for _, line in ipairs(lines) do
      env_name = line:match("#%s*conda_env:%s*(%S+)")
      if env_name then break end
    end

    -- Set the appropriate Python executable
    local python_cmd
    if env_name then
      python_cmd = "/home/allan/miniconda3/envs/" .. env_name .. "/bin/python"
    else
      python_cmd = "/home/allan/miniconda3/bin/python"  -- Default to base Python
    end

    -- Run the script with the detected interpreter
    vim.cmd('!' .. python_cmd .. ' %')

  elseif filetype == 'javascript' then
    vim.cmd('!cd ' .. current_dir .. ' && node %')

  elseif filetype == 'cpp' then
    -- Compile and run C++ file
    local filename = vim.fn.expand('%:t')  -- Get the filename (e.g., main.cpp)
    local output_name = filename:match("(.+)%..+$")  -- Get the file name without extension (e.g., main)
    vim.cmd('!cd ' .. current_dir .. ' && g++ ' .. filename .. ' -o ' .. output_name)
    vim.cmd('!cd ' .. current_dir .. ' && ./' .. output_name)  -- Run the compiled binary

  else
    print("Unsupported file type")
  end
end



vim.api.nvim_set_keymap('n', '<leader>.', ':lua RunScript()<CR>', { noremap = true, silent = true })

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
 

vim.api.nvim_set_hl(0, "Comment", { fg = "#FF8886", italic = false }) -- Orange Comments 🍊🔥
