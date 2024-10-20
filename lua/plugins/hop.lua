return {
  'smoka7/hop.nvim',
  version = "*",
  config = function()
    require('hop').setup({ keys = 'etovxqpdygfblzhckisuran' })

    vim.keymap.set({ 'n', 'x', 'o' }, 'gl', vim.cmd.HopLine, { desc = "Jump to line (Hop)" })
    vim.keymap.set({ 'n', 'x', 'o' }, 's', vim.cmd.HopChar1, { desc = "Jump to char1 (Hop)" })
    vim.keymap.set('n', 'gw', vim.cmd.HopWord, { desc = "Jump to word (Hop)" })
  end
}
