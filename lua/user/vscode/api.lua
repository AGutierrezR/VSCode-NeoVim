local vscode = require('vscode')

-- Basic API Utils
function Undo() vscode.call('undo') end
function Redo() vscode.call('redo') end

function NavitateBack() vscode.call("workbench.action.navigateBack") end
function NavigateForward() vscode.call("workbench.action.navigateForward") end

function QuickOpen() vscode.call("workbench.action.quickOpen") end
function QuickSwitchWindow() vscode.call("workbench.action.quickSwitchWindow") end
function OpenRecent() vscode.call("workbench.action.openRecent") end
function SwitchRecent()
	vscode.call('workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup')
  vscode.call('list.select')
end
function ShowOpenedEditors() 
  vscode.call("workbench.action.showAllEditorsByMostRecentlyUsed")
end

function QuickSearch() vscode.call("workbench.action.quickTextSearch") end

function OpenSettingsJSON() vscode.call("workbench.action.openSettingsJson") end

-- Errors
function GoPrevErrorInFiles() vscode.call("editor.action.marker.prevInFiles") end
function GoNextErrorInFiles() vscode.call("editor.action.marker.nextInFiles") end

-- Window
function NavigateToLeftView() vscode.call("workbench.action.navigateLeft") end
function NavigateToRightView() vscode.call("workbench.action.navigateRight") end

-- Symbols
function RenameSymbol() vscode.call("editor.action.rename") end
function GoToReferences() vscode.call("editor.action.goToReferences") end
function GoToSymbol() vscode.call("workbench.action.gotoSymbol") end
function ShowAllSymbols() vscode.call("workbench.action.showAllSymbols") end
function JumpToOutline() vscode.call("breadcrumbs.focusAndSelect") end

function GoToLastEditLocation() vscode.call('workbench.action.navigateToLastEditLocation') end

-- Extensions Utils
function WhichkeyShow() vscode.call('whichkey.show') end

function HarpoonAdd() vscode.call("vscode-harpoon.addEditor") end
function HarpoonList() vscode.call("vscode-harpoon.editorQuickPick") end
function HarpoonEdit() vscode.call("vscode-harpoon.editEditors") end

function LazyGitOpen() vscode.call("lazygit.openLazygit") end

function AdvanceCreateNewFile() vscode.call("extension.advancedNewFile") end

function FileBrowserOpen() vscode.call("file-browser.open") end

function CreateFoldingRangeFromSelection() vscode.call("editor.createFoldingRangeFromSelection") end
function RemoveManualFondingRanges() vscode.call("editor.removeManualFoldingRanges") end
function Fold() vscode.call("editor.fold") end
function Unfold() vscode.call("editor.unfold") end
function ToggleFold() vscode.call("editor.toggleFold") end