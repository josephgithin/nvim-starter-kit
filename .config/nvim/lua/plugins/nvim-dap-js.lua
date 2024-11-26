return {
  -- Plugin for nvim-dap and VS Code JavaScript debugger
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'mxsdev/nvim-dap-vscode-js',
    -- Build the VS Code JavaScript debugger from source
    {
      'microsoft/vscode-js-debug',
      version = '1.x',
      build = 'npm i && npm run compile vsDebugServerBundle && mv dist out',
    },
  },
  ft = { 'javascript', 'typescript', 'svelte' }, -- Load only for relevant file types
  config = function()
    -- Setup for nvim-dap-vscode-js
    require('dap-vscode-js').setup({
      debugger_path = vim.fn.stdpath('data') .. '/lazy/vscode-js-debug', -- Path to debugger
      adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' },
    })

    -- Debug configurations for JavaScript, TypeScript, and Svelte
    for _, language in ipairs({ 'javascript', 'typescript', 'svelte' }) do
      require('dap').configurations[language] = {
        -- Attach to an already running Node.js process with --inspect flag
        {
          type = 'pwa-node',
          request = 'attach',
          name = 'Attach debugger to existing `node --inspect` process',
          processId = require('dap.utils').pick_process,
          sourceMaps = true,
          resolveSourceMapLocations = {
            '${workspaceFolder}/**',
            '!**/node_modules/**',
          },
          cwd = '${workspaceFolder}/src',
          skipFiles = { '${workspaceFolder}/node_modules/**/*.js' },
        },
        -- Launch Chrome for debugging a web client
        {
          type = 'pwa-chrome',
          name = 'Launch Chrome to debug client',
          request = 'launch',
          url = 'http://localhost:5173', -- Vite default
          sourceMaps = true,
          protocol = 'inspector',
          address = '192.168.20.37',
          port = 9222, -- Debugging port
          webRoot = '${workspaceFolder}/src',
          skipFiles = { '**/node_modules/**/*', '**/@vite/*', '**/src/client/*', '**/src/*' },
        },
        -- Launch the current file in a new Node.js process
        language == 'javascript' and {
          type = 'pwa-node',
          request = 'launch',
          name = 'Launch file in new Node.js process',
          program = '${file}',
          cwd = '${workspaceFolder}',
        } or nil,
      }
    end

    -- Automatically open and close DAP UI
    local dap, dapui = require('dap'), require('dapui')
    dap.listeners.after.event_initialized['dapui_config'] = function()
      dapui.open({ reset = true })
    end
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close

    -- Setup DAP UI
    require('dapui').setup()
  end,
}

