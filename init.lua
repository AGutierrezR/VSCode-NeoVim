vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Basic settings
require('user.set')
require("user.keymaps")

-- Lazy settings
require("config.lazy")

-- VSCode & NeoVim Configuration
if vim.g.vscode then
  require('user.vscode.keymaps')
  require('user.vscode_commands')
else
  require('user.plugin_config')
end

