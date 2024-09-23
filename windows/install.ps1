New-Item -ItemType SymbolicLink -Path "$env:AppData\code\User\settings.json" -Target ".\vscode\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$env:AppData\code\User\keybindings.json" -Target ".\vscode\keybindings.json" -Force
