function RunScript()
  local filetype = vim.bo.filetype
  if filetype == 'python' then
    -- Run Python script using Anaconda's Python interpreter
    vim.cmd('!C:/Users/allan/anaconda3/python.exe %')
  elseif filetype == 'javascript' then
    -- Run JavaScript with Node.js
    vim.cmd('!node %')
  else
    print("Unsupported file type")
  end
end

vim.api.nvim_set_keymap('n', '<leader>r', ':lua RunScript()<CR>', { noremap = true, silent = true })
