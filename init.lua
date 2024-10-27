-- Add the new configuration directory to Neovim's runtime path.
-- Only needed if Neovim's configuration is located outside of ~/.config/nvim
vim.opt.runtimepath:append("~/.config/neocode")

-- Import initial user settings (e.g., interface and behavior).
require('user.settings')

-- Import custom key mappings defined by the user.
require('user.keymaps')
