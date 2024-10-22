return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({
      defaults = {
        git_icons = false,
        file_icons = false,
        color_icons = false
      },
      files = {
        cwd_prompt = false
      },
      lsp = {
        symbols = {
          prompt = "❯ "
        }
      },
    })

    vim.keymap.set('n', '<leader>f', require('fzf-lua').files, { desc = 'Search File' })
    vim.keymap.set('n', '<leader>/', require('fzf-lua').live_grep, { desc = 'Search by Grep' })
    vim.keymap.set('n', '<leader>b', require('fzf-lua').buffers, { desc = 'Find existing buffers' })
    vim.keymap.set('n', '<leader>?', require('fzf-lua').commands, { desc = 'Find Commands' })
  end
}
