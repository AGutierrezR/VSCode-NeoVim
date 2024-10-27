-- Better join lines
vim.keymap.set('n', 'J', 'mzJ`z');

-- yank to system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y')

-- paste from the system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>p', '"+p')
vim.keymap.set({ 'n', 'v' }, '<leader>P', '"+P')

-- better indent handling
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Move lines in visual mode
vim.keymap.set('v', 'J', ":m .+1<CR>==")
vim.keymap.set('v', 'K', ':m .-2<CR>==')
vim.keymap.set('x', 'J', ":move '>+1<CR>gv-gv")
vim.keymap.set('x', 'K', ":move '<-2<CR>gv-gv")

-- Better 'o' in visual mode for VSCode
vim.keymap.set('x', 'o', 'ozz')

-- clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

-- paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x')

-- Remove the worst place in.set History
vim.keymap.set('n', 'Q', '<nop>')
