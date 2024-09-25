-- <leader> key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Make line numbers default
vim.opt.relativenumber = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Improve backspace behavior
vim.opt.backspace = 'indent,eol,start'

-- Required basic settings
require("config.lazy")
require('user.functions')
require("user.keymaps")

-- VSCode & NeoVim Configuration
if vim.g.vscode then
  require('user.vscode.keymaps')
  require('user.vscode_commands')
end
