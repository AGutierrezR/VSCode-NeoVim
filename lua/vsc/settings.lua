-- Better Navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<Cmd>lua require("vscode").call("workbench.action.navigateLeft")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<Cmd>lua require("vscode").call("workbench.action.navigateRight")<CR>', { noremap = true, silent = true })

-- Which key 
vim.api.nvim_set_keymap('n', '<Space>', '<Cmd>lua require("vscode").call("whichkey.show")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<Space>', '<Cmd>lua require("vscode").call("whichkey.show")<CR>', { noremap = true, silent = true })

-- Symbols
vim.api.nvim_set_keymap('n', 'cd', '<Cmd>lua require("vscode").call("editor.action.rename")<CR>', { noremap = true, silent = true })
