-- Basic settings
require('user.set')
require("user.keymaps")

-- Lazy settings
require("config.lazy")

-- VSCode & NeoVim Configuration
if vim.g.vscode then
  require('user.vscode.keymaps')
  require('user.vscode_commands')
end

