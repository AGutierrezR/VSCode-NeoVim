-- <leader> key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Improve backspace behavior
vim.opt.backspace = 'indent,eol,start'

-- tabs & indentation
vim.opt.tabstop = 2       -- 2 spaces fot tab (prettier default)
vim.opt.shiftwidth = 2    -- 2 spaces for indent width
vim.opt.expandtab = true  -- expand tab to space
vim.opt.autoindent = true -- copy indent from current line when starting new one
