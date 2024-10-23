-- Add git related signs to the gutter, as well as utilities to managing changes
return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' }
    },
    current_line_blame = true,
  },
  config = function (_, opts)
    require('gitsigns').setup(opts)

    vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', { silent = true })
    vim.keymap.set('n', '<leader>gt', ':Gitsigns toggle_current_line_blame<CR>', { silent = true })
    vim.keymap.set('n', '<leader>gl', '<cmd>')
    vim.keymap.set('n', '<leader>gl', '<cmd>silent !tmux neww lazygit<CR>')
  end
}
