-- Fuzzy Finder (files, lsp, etc)
return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    enabled = false, -- disable telescope
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      local actions = require('telescope.actions')

      require('telescope').setup({
        defaults = {
          mappings = {
            i = {
              ['<C-k'] = actions.move_selection_previous,
              ['<C-j'] = actions.move_selection_next,
            }
          }
        },
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown({})
          },
          fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = false,  -- override the generic sorter
            override_file_sorter = false,     -- override the file sorter
            case_mode = "respect_case",        -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
          }
        }
      })

      -- Enable telescope extension if they are installed
      require('telescope').load_extension('ui-select')
      require('telescope').load_extension('fzf')
      require('telescope').load_extension('noice')

      -- See `:help telescope.builtin`
      local builtin = require('telescope.builtin')
      -- vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Search File' })
      -- vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = 'Search by Grep' })
      -- vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Find existing buffers' })
      -- vim.keymap.set('n', '<leader>?', builtin.commands, { desc = 'Find Commands' })

    end
  },
}
