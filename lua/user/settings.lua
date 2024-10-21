-- <leader> key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Line number related settings
vim.opt.nu = true
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing split for example.
vim.opt.mouse = 'a'

-- show which line your cursor is on
vim.opt.cursorline = true

-- Minial number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Improve backspace behavior
vim.opt.backspace = 'indent,eol,start'
vim.opt.smartindent = true

-- Change undodir to undotree folder
vim.opt.undofile = true
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'

-- tabs & indentation
vim.opt.tabstop = 2 -- 2 spaces fot tab (prettier default)
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- expand tab to space
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- Highlight when yanking (copying) text
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-hightlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end
})

