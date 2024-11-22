return {
  -- https://github.com/mfussenegger/nvim-dap-python
  'mfussenegger/nvim-dap-python',
  ft = 'python',
  dependencies = {
    -- https://github.com/mfussenegger/nvim-dap
    'mfussenegger/nvim-dap',
  },
  config = function()
    local function get_python_path()
      -- Get the current Python path using vim's job feature
      local python_path = vim.fn.system('which python'):gsub('\n', '')
      
      -- If no python found, try python3
      if python_path == '' or python_path:match("not found") then
        python_path = vim.fn.system('which python3'):gsub('\n', '')
      end
      
      -- Fallback to vim's exepath if system command fails
      if python_path == '' or python_path:match("not found") then
        python_path = vim.fn.exepath('python3') or vim.fn.exepath('python')
      end
      
      return python_path
    end

    require('dap-python').setup(get_python_path())
  end
}
