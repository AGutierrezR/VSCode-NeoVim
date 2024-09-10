-- <leader> key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

-- Improve backspace behavior
vim.opt.backspace = 'indent,eol,start'

-- paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

require("config.lazy")

-- VSCode & NeoVim Configuration
if vim.g.vscode then
  require('vsc/keymaps')
end
