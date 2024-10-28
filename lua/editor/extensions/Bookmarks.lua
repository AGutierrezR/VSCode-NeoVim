local vscode = require('vscode')

-- Bookmark Extension API
function BookmarksList() vscode.call('bookmarks.list') end

function BookmarksWorkspaceList() vscode.call('bookmarks.listFromAllFiles') end

function BookmarksToggleLabeled() vscode.call('bookmarks.toggleLabeled') end

function BookmarksClear() require('vscode').call('bookmarks.clear') end

function BookmarksClearAll() require('vscode').call('bookmarks.clearFromAllFiles') end

-- Keymaps
vim.keymap.set('n', 'm', BookmarksToggleLabeled)
vim.keymap.set('n', '<leader>j', BookmarksList)
vim.keymap.set('n', '<leader>J', BookmarksWorkspaceList)

-- Commands
vim.api.nvim_create_user_command(
  'VSCodeMarks',
  function()
    require('vscode').action('workbench.view.extension.bookmarks')
  end,
  {}
)

vim.api.nvim_create_user_command(
  'VSCodeFileMarks',
  BookmarksList,
  {}
)

vim.api.nvim_create_user_command(
  'VSCodeWorkspaceMarks',
  BookmarksWorkspaceList,
  {}
)

vim.api.nvim_create_user_command(
  'VSCodeClearFileMarks',
  BookmarksClear,
  {}
)

vim.api.nvim_create_user_command(
  'VSCodeClearWorkspaceMarks',
  BookmarksClearAll,
  {}
)
