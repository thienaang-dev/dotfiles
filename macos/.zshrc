# Disable auto update to improve performance
DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_COMPFIX="true"

# Source antidote
source $HOME/.antidote/antidote.zsh

# Smarter completion initialization
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

# Load antidote
antidote load

# Starts starship
eval "$(starship init zsh)"

# User specific environment
typeset -U path PATH
path=("$HOME/.local/bin" "$HOME/bin" $path)
path+=("/opt/gradle/bin")
export PATH
#
# Settings
setopt AUTO_CD

# Keybinds
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Exports
export EDITOR="nvim"
export VISUAL="nvim"
export JAVA_HOME=/opt/homebrew/opt/openjdk@21

# Aliases
alias glor="git log --oneline --reverse"
alias c="clear"
alias vi="nvim"
alias la="ls -lAFh"

# bun completions
[ -s "/Users/thienannguyen/.bun/_bun" ] && source "/Users/thienannguyen/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
