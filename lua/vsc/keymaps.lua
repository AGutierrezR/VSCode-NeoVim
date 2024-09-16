local keymap = function(mode, keys, func, opts)
  opts = opts or { noremap = true, silent = true }

  if type(mode) == 'string' then
    vim.api.nvim_set_keymap(mode, keys, func, opts)
  elseif type(mode) == 'table' then
    for _, m in ipairs(mode) do
      vim.api.nvim_set_keymap(m, keys, func, opts)
    end
  end
end

-- Move lines in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Better join lines
keymap("n", "J", "mzJ`z");

-- Better o in visual mode for VSCode
keymap('v', 'o', 'ozz')

-- Better Navigation
keymap('n', '<C-h>', '<Cmd>lua require("vscode").call("workbench.action.navigateLeft")<CR>')
keymap('n', '<C-l>', '<Cmd>lua require("vscode").call("workbench.action.navigateRight")<CR>')

keymap({ 'n', 'x' }, 'gl', '<cmd>HopLine<CR>')
keymap({ 'n', 'x' }, 's', '<cmd>HopChar1<CR>')

keymap({ 'n', 'v' }, '<C-o>', '<Cmd>lua require("vscode").call("workbench.action.navigateBack")<CR>')
keymap({ 'n', 'v' }, '<C-i>', '<Cmd>lua require("vscode").call("workbench.action.navigateForward")<CR>')

keymap('n', '[d', '<Cmd>lua require("vscode").call("editor.action.marker.prevInFiles")<CR>')
keymap('n', ']d', '<Cmd>lua require("vscode").call("editor.action.marker.nextInFiles")<CR>')


-- Which key 
keymap({ 'n', 'x' }, '<Space>', '<Cmd>lua require("vscode").call("whichkey.show")<CR>')
-- keymap('x', '<Space>', '<Cmd>lua require("vscode").call("whichkey.show")<CR>')

-- Symbols
keymap('n', 'cd', '<Cmd>lua require("vscode").call("editor.action.rename")<CR>')
keymap('n', 'gs', '<Cmd>lua require("vscode").call("workbench.action.gotoSymbol")<CR>')
keymap('n', 'gS', '<Cmd>lua require("vscode").call("workbench.action.showAllSymbols")<CR>')

keymap({'n', 'x'}, 'Y', '"+y')
keymap({"v", "n" }, ">", ">gv")
keymap({"v", "n" }, "<", "<gv")
