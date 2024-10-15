-- Fuzzy Finder (files, lsp, etc)
return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-ui-select.nvim' }
    },
    config = function()
      require('telescope').setup({
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown({})
          }
        }
      })

      -- Enable telescope extension if they are installed
      pcall(require('telescope').load_extension('ui-select'))

      -- See `:help telescope.builtin`
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Search File' })
      vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = 'Search by Grep' })
      vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Find existing buffers' })

    end
  },
}
