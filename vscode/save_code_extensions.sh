#!/bin/sh

echo "Saving VSCode extensions..."
code --list-extensions > "$HOME"/Documents/dotfiles/vscode/extensions.txt