return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  cmd = { 'Neotree' },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup({
      close_if_last_window = true,
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
      },
      window = {
        position = 'right'
      }
    })
  end
}
