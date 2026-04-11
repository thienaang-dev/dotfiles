# Source antidote
source $HOME/.antidote/antidote.zsh
antidote load

# Smarter completion initialization
autoload -Uz compinit
compinit -C

# Starts starship
eval "$(starship init zsh)"

# User specific environment
typeset -U path PATH
path=("$HOME/.local/bin" "$HOME/bin" "/opt/gradle/bin" $path)
export PATH

# Settings
setopt AUTO_CD

# Keybinds
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Exports
export EDITOR="nvim"
export VISUAL="nvim"
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac))))

# Aliases
alias glor="git log --oneline --reverse"
alias c="clear"
alias vi="nvim"
alias la="ls -lAFh"
alias t="tmux"
alias tl="tmux ls"
alias ta="tmux attach"
alias ts="tmux new-session -s"
alias mux="tmuxinator"
