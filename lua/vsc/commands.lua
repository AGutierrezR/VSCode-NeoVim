
vim.api.nvim_create_user_command(
  'UndoTreeView',
  function()
    require('vscode').call('undoTreeView.focus')
  end,
  {}
)

vim.api.nvim_create_user_command(
  'Outline',
  function()
    require('vscode').call('breadcrumbs.focusAndSelect')
  end,
  {}
)