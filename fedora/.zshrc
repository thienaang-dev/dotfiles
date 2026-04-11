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
ulimit -n 8192

# Keybinds
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Exports
export EDITOR="nvim"
export VISUAL="nvim"
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))

# Aliases
alias glor="git log --oneline --reverse"
alias c="clear"
alias vi="nvim"
alias la="ls -lAFh"
alias t="tmux"
alias tl="tmux ls"
alias ta="tmux attach -t"
alias ts="tmux new-session -s"
alias tks="tmux kill-server"
alias tkw="tmux kill-window -t"
alias mux="tmuxinator"

gbdae() {
  if [ -n "$1" ]
  then
    gb | grep -v "$1" | xargs git branch -D
  fi
}
