local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('v', '*', '"6y/\\V<C-r>6<CR>N')
keymap('v', '#', '"6y?\\V<C-r>6<CR>N')

-- -- remap leader key
-- keymap('n', '<Space>', '', opts)

-- Better join lines
keymap('n', 'J', 'mzJ`z');

-- yank to system clipboard
keymap({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Copy to system clipboard' })

-- paste from the system clipboard
keymap({ 'n', 'v' }, '<leader>p', '"+p', { desc = 'Paste from system clipboard' })

-- better indent handling
keymap('v', '<', '<gv', opts)

-- Move lines in visual mode
keymap('v', 'J', ":m .+1<CR>==", opts)
keymap('v', 'K', ':m .-2<CR>==', opts)
keymap('x', 'J', ":move '>+1<CR>gv-gv", opts)
keymap('x', 'K', ":move '<-2<CR>gv-gv", opts)

-- -- paste preserve primal yanked piece
-- keymap('v', 'p', '"_dP', opts)
-- delete single character without copying into register
keymap('n', 'x', '"_x', opts)

-- clear search highlighting
keymap('n', '<Esc>', ':nohlsearch<cr>', { desc = 'Clear search highlighting' })

-- Hopline keymaps
keymap({ 'n', 'x', 'o' }, 'gl', '<cmd>HopLine<CR>', opts)
keymap({ 'n', 'x', 'o' }, 's', '<cmd>HopChar1<CR>', opts)

keymap('n', 'Q', '<nop>')
keymap('n', 'ga', '<cmd>b#<CR>')

