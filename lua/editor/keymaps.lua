require('editor.api')

-- GENERAL TWEAKS
-- Better 'O' in visual mode for VSCode
vim.keymap.set('x', 'o', 'ozz')

-- undo/redo via vscode
vim.keymap.set('n', 'u', Undo)
vim.keymap.set('n', '<C-r>', Redo)

-- Leader
vim.keymap.set({ 'n', 'x' }, '<leader>f', QuickOpen)
vim.keymap.set({ 'n', 'x' }, '<leader>b', ShowOpenedEditors)
vim.keymap.set({ 'n', 'x' }, '<leader>s', GoToSymbol)
vim.keymap.set({ 'n', 'x' }, '<leader>S', ShowAllSymbols)
vim.keymap.set({ 'n', 'x' }, '<leader>d', OpenDiagnosticView)
vim.keymap.set({ 'n', 'x' }, '<leader>a', QuickFix)
vim.keymap.set({ 'n', 'x' }, '<leader>o', JumpToOutline)
vim.keymap.set({ 'n', 'x' }, '<leader>/', QuickSearch)
vim.keymap.set({ 'n', 'x' }, '<leader>k', ShowHover)
vim.keymap.set({ 'n', 'x' }, '<leader>r', RenameSymbol)
vim.keymap.set({ 'n', 'x' }, '<leader>?', OpenCommandPalette)

-- Goto
vim.keymap.set({ 'n', 'x' }, 'gr', GoToReferences)
vim.keymap.set({ 'n', 'x' }, 'ga', SwitchRecent)
vim.keymap.set({ 'n', 'x' }, 'g.', GoToLastEditLocation)

-- Brackets
vim.keymap.set('n', '[d', GoPrevErrorInFiles)
vim.keymap.set('n', ']d', GoNextErrorInFiles)

-- View
vim.keymap.set('n', 'zg', OpenView)

-- Tmux Like behavior
vim.keymap.set('n', '<C-a>s', SwitchWindow)
