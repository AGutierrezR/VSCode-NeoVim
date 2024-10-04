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


--
-- Leader namespace
--
keymap({ 'n', 'x' }, '<leader>f', QuickOpen, opts)
keymap({ 'n', 'x' }, '<leader><S-f>', FileBrowserOpen, opts)
keymap({ 'n', 'x' }, '<leader>b', ShowOpenedEditors, opts)
-- keymap({ 'n', 'x' }, '<leader>j', XXX, opts)
keymap({ 'n', 'x' }, '<leader>s', GoToSymbol, opts)
keymap({ 'n', 'x' }, '<leader><S-s>', ShowAllSymbols, opts)
-- keymap({ 'n', 'x' }, '<leader>d', XXX, opts)
-- keymap({ 'n', 'x' }, '<leader><S-d>', XXX, opts)
-- keymap({ 'n', 'x' }, '<leader>g', XXX, opts) -- Used by LazyGit
-- keymap({ 'n', 'x' }, '<leader>a', XXX, opts) -- Used by Harpoon
-- keymap({ 'n', 'x' }, "<leader>'", XXX, opts)
-- keymap({ 'n', 'x' }, '<leader>G', XXX, opts)
-- keymap({ 'n', 'x' }, '<leader>w', XXX, opts)
-- keymap({ 'n', 'x' }, '<leader>y', XXX, opts) -- Exist in general
-- keymap({ 'n', 'x' }, '<leader><S-y>', XXX, opts) -- Exist in general
-- keymap({ 'n', 'x' }, '<leader>p', XXX, opts) -- Exist in general
keymap({ 'n', 'x' }, '<leader>ws', QuickSwitchWindow, opts)
keymap({ 'n', 'x' }, '<leader>wo', OpenRecent, opts)
-- keymap({ 'n', 'x' }, '<leader><S-p>', XXX, opts) -- Exist in general
-- keymap({ 'n', 'x' }, '<leader><S-r>', XXX, opts)
keymap({ 'n', 'x' }, '<leader>/', QuickSearch, opts)
-- keymap({ 'n', 'x' }, '<leader>k', XXX, opts)
keymap({ 'n', 'x' }, '<leader>r', RenameSymbol, opts)
-- keymap({ 'n', 'x' }, '<leader>h', XXX, opts)
-- keymap({ 'n', 'x' }, '<leader>c', XXX, opts)
-- keymap({ 'n', 'x' }, '<leader><S-c>', XXX, opts)
-- keymap({ 'n', 'x' }, '<leader><A-c>', XXX, opts)
keymap({ 'n', 'x' }, '<leader>?', WhichkeyShow, opts)
keymap({ 'n', 'x' }, '<leader>,', SwitchRecent, opts)

-- +VSCode 
keymap('n', '<leader><S-v><S-d>', OpenSettingsJSON, opts)
-- Symbols
keymap({ 'n', 'x' }, '<leader>jv', JumpToOutline, opts)

--
-- Go to
--
keymap({ 'n', 'x' }, 'gr', GoToReferences, opts)
keymap({ 'n', 'x' }, 'ga', SwitchRecent, opts)
keymap({ 'n', 'x' }, 'gw', '<cmd>HopWord<CR>', opts)
keymap({ 'n', 'x' }, 'g.', GoToLastEditLocation, opts)

-- Errors
keymap('n', '[d', GoPrevErrorInFiles, opts)
keymap('n', ']d', GoNextErrorInFiles, opts)

-- Harpoon bindings
keymap('n', '<leader>a', HarpoonAdd, opts)
keymap('n', '<C-e>', HarpoonList, opts)
keymap('n', '<C-y>', HarpoonEdit, opts)

-- LazyGit
keymap('n', '<leader>gl', LazyGitOpen, opts)

-- File related
-- keymap('n', '<leader>fn', AdvanceCreateNewFile, opts)
-- keymap('n', '<leader>ff', FileBrowserOpen, opts)

keymap('x', 'zf', CreateFoldingRangeFromSelection, opts)
keymap('n', 'zd', RemoveManualFondingRanges, opts)
keymap('n', 'zo', Unfold, opts)
keymap('n', 'zc', Fold, opts)
keymap('n', 'za', ToggleFold, opts)
keymap('n', 'zg', OpenView, opts)
