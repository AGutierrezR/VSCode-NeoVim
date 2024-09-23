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

keymap({ 'n', 'x', 'o' }, 'gl', '<cmd>HopLine<CR>')
keymap({ 'n', 'x', 'o' }, 's', '<cmd>HopChar1<CR>')

-- Better join lines
keymap("n", "J", "mzJ`z");

-- Better o in visual mode for VSCode
keymap('x', 'o', 'ozz')

-- Better indenting behavior
keymap({'n', 'x', 'o'}, 'Y', '"+y')
keymap({'n', 'x', 'o'}, ">", ">gv")
keymap({'n', 'x', 'o' }, "<", "<gv")
