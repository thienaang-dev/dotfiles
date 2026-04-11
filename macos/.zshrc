# Antidote
source $HOME/.antidote/antidote.zsh
antidote load

# Smarter completion initialization
autoload -Uz compinit
compinit

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
export EDITOR=VISUAL="nvim"
export JAVA_HOME=$(/usr/libexec/java_home)

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

# Deletes all local branch except branch in parameter
gbdae() {
  if [ -n "$1" ]
  then
    gb | grep -v "$1" | xargs git branch -D
  fi
}

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
