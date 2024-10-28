local vscode = require('vscode')

-- FileBrowserOpen Extension API
function FileBrowserOpen() vscode.call('file-browser.open') end

-- Keymaps
vim.keymap.set({ 'n', 'x' }, '-', FileBrowserOpen)

-- VSCode Keybinding
-- {
--   "key": "-",
--   "command": "file-browser.stepOut",
--   "when": "inFileBrowser"
-- }
