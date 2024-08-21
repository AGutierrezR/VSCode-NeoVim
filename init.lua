-- <leader> key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- sync system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

-- paste without overwriting
vim.keymap.set('v', 'p', 'P')

require("config.lazy")

-- VSCode & NeoVim Configuration
if vim.g.vscode then
  require('vsc/settings')
end
