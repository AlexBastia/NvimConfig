vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('v', "<C-c>", '"+y')
vim.keymap.set('n', "<C-c>", '"+yy')
vim.keymap.set('n', "<C-v>", '"+p')


-- Debugger
local dap = require('dap')
vim.keymap.set("n", "<leader>db", function() dap.toggle_breakpoint() end)
vim.keymap.set("n", "<leader>dr", function() dap.continue() end)
