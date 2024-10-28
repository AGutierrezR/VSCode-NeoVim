-- Add the new configuration directory to Neovim's runtime path.
-- Only needed if Neovim's configuration is located outside of ~/.config/nvim
vim.opt.runtimepath:append("~/.config/neocode")

-- Import initial user settings (e.g., interface and behavior).
require('user.settings')

-- Import custom key mappings defined by the user.
require('user.keymaps')

-- If Neovim is running in VSCode mode, load additional key mappings specific to VSCode.
if vim.g.vscode then
  require('editor.keymaps')
  require('editor.commands')
  require('editor.extensions')
end
