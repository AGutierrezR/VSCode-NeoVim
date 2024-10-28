require('editor.api')

vim.api.nvim_create_user_command(
  'VSCodeToggleSidebar',
  function()
    require('vscode').action('workbench.action.toggleSidebarVisibility')
  end,
  {}
)
