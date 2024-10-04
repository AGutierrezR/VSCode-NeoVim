
vim.api.nvim_create_user_command(
  'UndoTreeView',
  function()
    require('vscode').action('undoTreeView.focus')
  end,
  {}
)

vim.api.nvim_create_user_command(
  'Outline',
  function()
    require('vscode').action('breadcrumbs.focusAndSelect')
  end,
  {}
)

vim.api.nvim_create_user_command(
  'HarpoonList',
  function()
    require('vscode').action('vscode-harpoon.editorQuickPick')
  end,
  {}
)

vim.api.nvim_create_user_command(
  'HarpoonAdd',
  function()
    require('vscode').action('vscode-harpoon.addEditor')
  end,
  {}
)

vim.api.nvim_create_user_command(
  'HarpoonEdit',
  function()
    require('vscode').action('vscode-harpoon.editEditors')
  end,
  {}
)

vim.api.nvim_create_user_command(
  'CopyRelativeFilePath',
  function()
    require('vscode').action('copyRelativeFilePath')
  end,
  {}
)

vim.api.nvim_create_user_command(
  'CopyFilePath',
  function()
    require('vscode').action('copyFilePath')
  end,
  {}
)
