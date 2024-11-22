-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- General keymaps
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and quit" })
keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "Quit without saving" })
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Save" })
keymap.set("n", "gx", ":!open <c-r><c-a><CR>", { desc = "Open URL under cursor" })

-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equalize split window sizes" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close split window" })
keymap.set("n", "<leader>sj", "<C-w>-", { desc = "Decrease split window height" })
keymap.set("n", "<leader>sk", "<C-w>+", { desc = "Increase split window height" })
keymap.set("n", "<leader>sl", "<C-w>>5", { desc = "Increase split window width" })
keymap.set("n", "<leader>sh", "<C-w><5", { desc = "Decrease split window width" })

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open a new tab" })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab" })

-- Diff keymaps
keymap.set("n", "<leader>cc", ":diffput<CR>", { desc = "Put diff changes to other buffer" })
keymap.set("n", "<leader>cj", ":diffget 1<CR>", { desc = "Get changes from left buffer" })
keymap.set("n", "<leader>ck", ":diffget 3<CR>", { desc = "Get changes from right buffer" })
keymap.set("n", "<leader>cn", "]c", { desc = "Next diff hunk" })
keymap.set("n", "<leader>cp", "[c", { desc = "Previous diff hunk" })

-- Quickfix keymaps
keymap.set("n", "<leader>qo", ":copen<CR>", { desc = "Open quickfix list" })
keymap.set("n", "<leader>qf", ":cfirst<CR>", { desc = "Go to first quickfix item" })
keymap.set("n", "<leader>qn", ":cnext<CR>", { desc = "Go to next quickfix item" })
keymap.set("n", "<leader>qp", ":cprev<CR>", { desc = "Go to previous quickfix item" })
keymap.set("n", "<leader>ql", ":clast<CR>", { desc = "Go to last quickfix item" })
keymap.set("n", "<leader>qc", ":cclose<CR>", { desc = "Close quickfix list" })

-- Vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "Toggle maximizer" })

-- Nvim-tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>", { desc = "Focus on file explorer" })
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>", { desc = "Find file in explorer" })

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = "Find files" })
keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = "Live grep" })
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = "List buffers" })
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = "Search help tags" })
keymap.set('n', '<leader>fs', require('telescope.builtin').current_buffer_fuzzy_find, { desc = "Fuzzy search in current buffer" })
keymap.set('n', '<leader>fo', require('telescope.builtin').lsp_document_symbols, { desc = "Document symbols" })
keymap.set('n', '<leader>fi', require('telescope.builtin').lsp_incoming_calls, { desc = "Incoming calls (LSP)" })
keymap.set("n", '<leader>fm', function() require('telescope.builtin').treesitter({default_text=":method:"}) end, { desc = "Search methods with treesitter" })

-- Git-blame
keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>", { desc = "Toggle Git blame" })

-- Harpoon
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, { desc = "Add file to Harpoon" })
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, { desc = "Toggle Harpoon menu" })
keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end, { desc = "Navigate to Harpoon file 1" })
keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end, { desc = "Navigate to Harpoon file 2" })
keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end, { desc = "Navigate to Harpoon file 3" })
keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end, { desc = "Navigate to Harpoon file 4" })

-- Vim REST Console
keymap.set("n", "<leader>xr", ":call VrcQuery()<CR>", { desc = "Run REST query" })

-- LSP keymaps
keymap.set('n', '<leader>gg', '<cmd>lua vim.lsp.buf.hover()<CR>', { desc = "Hover (LSP)" })
keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { desc = "Go to definition" })
keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { desc = "Go to declaration" })
keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { desc = "Go to implementation" })
keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { desc = "Go to type definition" })
keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', { desc = "List references" })
keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { desc = "Signature help" })
keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>', { desc = "Rename symbol" })
keymap.set('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>', { desc = "Format buffer" })
keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', { desc = "Code action" })
keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = "Open diagnostics" })
keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { desc = "Go to previous diagnostic" })
keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', { desc = "Go to next diagnostic" })

-- Debugging
keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = "Toggle breakpoint" })
keymap.set("n", "<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", { desc = "Set conditional breakpoint" })
keymap.set("n", "<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>", { desc = "Set log point" })
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", { desc = "Continue debugging" })
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>", { desc = "Step over" })
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>", { desc = "Step into" })
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>", { desc = "Step out" })
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", { desc = "Toggle REPL" })
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", { desc = "Run last debug session" })
keymap.set("n", "<leader>dt", function() require('dap').terminate(); require('dapui').close() end, { desc = "Terminate debugging" })

