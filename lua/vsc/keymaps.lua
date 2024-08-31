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

-- Better Navigation
keymap('n', '<C-h>', '<Cmd>lua require("vscode").call("workbench.action.navigateLeft")<CR>')
keymap('n', '<C-l>', '<Cmd>lua require("vscode").call("workbench.action.navigateRight")<CR>')

keymap('n', 'gl', ':HopLine<CR>')
keymap({ 'n', 'x', 'o' }, 's', ':HopChar1<CR>')

-- Which key 
keymap({ 'n', 'x' }, '<Space>', '<Cmd>lua require("vscode").call("whichkey.show")<CR>')
-- keymap('x', '<Space>', '<Cmd>lua require("vscode").call("whichkey.show")<CR>')

-- Symbols
keymap('n', 'cd', '<Cmd>lua require("vscode").call("editor.action.rename")<CR>')
keymap('n', 'gs', '<Cmd>lua require("vscode").call("workbench.action.gotoSymbol")<CR>')
keymap('n', 'gS', '<Cmd>lua require("vscode").call("workbench.action.showAllSymbols")<CR>')
