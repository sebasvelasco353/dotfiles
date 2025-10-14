# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="robbyrussell"

# Load plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='code'

# Export NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Exports for Go-Blueprint
GOPATH=$HOME/go  PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Functions
fzopen() {
fzf --style full \
    --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}' \
    --bind 'enter:execute($EDITOR {} > /dev/tty < /dev/tty)+abort'
}
