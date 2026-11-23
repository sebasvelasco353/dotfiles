# setup
autoload -Uz vcs_info add-zsh-hook
setopt PROMPT_SUBST

# catppuccin Mocha palette
local mauve='%F{#cba6f7}'
local blue='%F{#89b4fa}'
local green='%F{#a6e3a1}'
local yellow='%F{#f9e2af}'
local teal='%F{#94e2d5}'
local red='%F{#f38ba8}'
local overlay='%F{#6c7086}'
local reset='%f'

# git info via vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr   "${teal}+${reset}"
zstyle ':vcs_info:git:*' unstagedstr "${yellow}!${reset}"
zstyle ':vcs_info:git:*' formats " ${overlay}on${reset} ${green}%b${reset} %c%u"
zstyle ':vcs_info:git:*' actionformats " ${overlay}on${reset} ${green}%b${reset} ${red}(%a)${reset} %c%u"

# Add a "?" for untracked files (vcs_info doesn't detect these by default)
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2>/dev/null) == true ]] && \
     [[ -n $(git ls-files --others --exclude-standard 2>/dev/null | head -n 1) ]]; then
    hook_com[unstaged]+="${red}?${reset}"
  fi
}

# Refresh git info before every prompt
add-zsh-hook precmd vcs_info

# prompt
PROMPT="${blue}%3~${reset}"'${vcs_info_msg_0_}'$'\n'"%(?.${green}.${red})❯${reset} "

# Aliases
alias sf='nvim $(fzf --preview "bat --style=numbers --color=always {}")' # Search for a file and open in nvim

# functions
sif() { # search file contents with ripgrep + fzf (live, literal, recursive, case-insensitive), preview match, open in nvim
  local rg_prefix="rg --line-number --no-heading --ignore-case --color=always"
  local result
  result=$(
    FZF_DEFAULT_COMMAND="$rg_prefix -- '$*'" \
    fzf --ansi --disabled --query "$*" \
        --delimiter : \
        --bind "change:reload:$rg_prefix -- {q} || true" \
        --preview "bat --style=numbers --color=always --highlight-line {2} {1}" \
        --preview-window "+{2}-/2"
  )
  [ -n "$result" ] && nvim "$(echo "$result" | cut -d: -f1)"
}

# Exports
export EDITOR=nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/Users/sebas/.local/bin:$PATH"
