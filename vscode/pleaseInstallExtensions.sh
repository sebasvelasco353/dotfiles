#!/bin/bash

echo "0. Installing VSCode Extensions"
code --install-extension dbaeumer.vscode-eslint
code --install-extension formulahendry.auto-rename-tag
code --install-extension github.github-vscode-theme
code --install-extension golang.go
code --install-extension gruntfuggly.todo-tree
code --install-extension kamikillerto.vscode-colorize
code --install-extension ms-python.debugpy
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension pkief.material-icon-theme
code --install-extension ritwickdey.liveserver
code --install-extension sdras.vue-vscode-snippets
code --install-extension sirtori.indenticator
code --install-extension usernamehw.errorlens
code --install-extension vscodevim.vim
code --install-extension vue.volar
code --install-extension wix.vscode-import-cost

echo "1. Deleting old Config"
rm Library/Application\ Support/Code/User/
echo "2. Creating SymLink fo VSCode's configuration"
ln -s ./settings.json ~/Library/Application\ Support/Code/User/