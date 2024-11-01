local vscode = require('vscode')

function Undo() vscode.call('undo') end

function Redo() vscode.call('redo') end

function QuickOpen() vscode.call("workbench.action.quickOpen") end

function ShowOpenedEditors()
  vscode.call("workbench.action.showAllEditorsByMostRecentlyUsed")
end

function GoToSymbol() vscode.call("workbench.action.gotoSymbol") end

function ShowAllSymbols() vscode.call("workbench.action.showAllSymbols") end

function OpenDiagnosticView() vscode.call("workbench.action.problems.focus") end

function QuickFix() vscode.call("editor.action.quickFix") end

function JumpToOutline() vscode.call("breadcrumbs.focusAndSelect") end

function SwitchWindow() vscode.call("workbench.action.switchWindow") end

function OpenRecent() vscode.call("workbench.action.openRecent") end

function QuickSearch() vscode.call("workbench.action.quickTextSearch") end

function ShowHover() vscode.call("editor.action.showHover") end

function RenameSymbol() vscode.call("editor.action.rename") end

function OpenCommandPalette() vscode.call("workbench.action.showCommands") end

function GoToReferences() vscode.call("editor.action.goToReferences") end

function SwitchRecent()
  vscode.call('workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup')
  vscode.call('list.select')
end

function GoToLastEditLocation() vscode.call('workbench.action.navigateToLastEditLocation') end

function GoPrevErrorInFiles() vscode.call("editor.action.marker.prevInFiles") end

function GoNextErrorInFiles() vscode.call("editor.action.marker.nextInFiles") end

function OpenView() vscode.call("workbench.action.openView") end
