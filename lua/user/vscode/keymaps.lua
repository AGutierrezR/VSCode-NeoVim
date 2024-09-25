require('user.vscode.api')
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

--
-- GENERAL TWEAKS
--
-- Better 'O' in visual mode for VSCode
keymap('x', 'o', 'ozz', opts)

-- undo/redo via vscode
keymap('n', 'u', Undo, opts)
keymap('n', '<C-r>', Redo, opts)

-- Moving back and forth in history
keymap({ 'n', 'x' }, '<C-o>', NavitateBack, opts)
keymap({ 'n', 'x' }, '<C-i>', NavigateForward, opts)

-- Show which key palette
keymap({ 'n', 'x' }, '<leader>?', WhichkeyShow, opts)

-- Search in project
keymap({ 'n', 'x' }, '<leader>/', QuickSearch, opts)

-- Project related keymaps
keymap('n', '<leader>pf', QuickOpen, opts)
keymap('n', '<leader>ps', QuickSwitchWindow, opts)
keymap('n', '<leader>pp', OpenRecent, opts)

keymap('n', '<leader>bb', ShowOpenedEditors, opts)

-- +VSCode 
keymap('n', '<leader><S-v><S-d>', OpenSettingsJSON, opts)

-- Switch to previous tab
keymap({ 'n', 'x' }, '<leader>,', SwitchRecent, opts)

--
-- CODE NAVIGATION BINDINGS
--
-- Symbols
keymap({ 'n', 'x' }, 'cd', RenameSymbol, opts)
keymap({ 'n', 'x' }, 'gr', GoToReferences, opts)
keymap({ 'n', 'x' }, '<leader>ss', GoToSymbol, opts)
keymap({ 'n', 'x' }, '<leader>sS', ShowAllSymbols, opts)
keymap({ 'n', 'x' }, '<leader>jv', JumpToOutline, opts)

-- Errors
keymap('n', '[d', GoPrevErrorInFiles, opts)
keymap('n', ']d', GoNextErrorInFiles, opts)

-- WINDOW BINDINGS
-- Navigate between split editors
keymap('n', '<C-h>', NavigateToLeftView, opts)
keymap('n', '<C-l>', NavigateToRightView, opts)

-- Harpoon bindings
keymap('n', '<leader>a', HarpoonAdd, opts)
keymap('n', '<C-e>', HarpoonList, opts)
keymap('n', '<C-y>', HarpoonEdit, opts)

-- LazyGit
keymap('n', '<leader>gl', LazyGitOpen, opts)

-- File related
keymap('n', '<leader>fn', AdvanceCreateNewFile, opts)
keymap('n', '<leader>ff', FileBrowserOpen, opts)
