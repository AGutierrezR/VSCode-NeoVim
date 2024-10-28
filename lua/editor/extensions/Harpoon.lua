local vscode = require('vscode')

-- VSCode Harpoon Extension API
function HarpoonAdd() vscode.call("vscode-harpoon.addEditor") end

function HarpoonList() vscode.call("vscode-harpoon.editorQuickPick") end

function HarpoonEdit() vscode.call("vscode-harpoon.editEditors") end

-- Keymaps
vim.keymap.set({ 'n', 'x' }, '<leader>x', HarpoonAdd)
vim.keymap.set({ 'n', 'x' }, '<C-e>', HarpoonList)
vim.keymap.set({ 'n', 'x' }, '<C-y>', HarpoonEdit)
