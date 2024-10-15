return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup({
      skip_confirm_for_simple_edit = true,
      view_options = {
        show_hidden = true,
        is_always_hidden = function(name, _)
          return name == '..' or name == '.git'
        end
      },
      win_options = {
        wrap = true,
      }
    })

    vim.keymap.set('n', '-', vim.cmd.Oil, { desc = 'Open parent directory '})
  end
}
