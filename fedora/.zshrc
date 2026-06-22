# Smarter completion initialization
autoload -Uz compinit
if [[ ! -f ~/.zcompdump || ~/.zcompdump -nt $ZDOTDIR/.zshrc ]]; then
  compinit
else
  compinit -C
fi

# Antidote
source $HOME/.antidote/antidote.zsh
antidote load

# starship
eval "$(starship init zsh)"

# path
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
alias rl="exec zsh"
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
alias trl="tmux source $HOME/.config/tmux/tmux.conf"
alias mux="tmuxinator"
alias muxst="tmuxinator start server && tmuxinator start code && tmuxinator start git && tmuxinator start plan"

# Deletes all local branch except branch in parameter
gbdae() {
  if [ -n "$1" ]
  then
    gb | grep -v "$1" | xargs git branch -D
  fi
}

# SDKMAN - must be at end of file to work
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
