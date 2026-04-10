# Disable auto update to improve performance
DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_COMPFIX="true"

# Smarter completion initialization
autoload -Uz compinit
if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
    compinit
else
    compinit -C
fi

# Path to Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Set theme
ZSH_THEME="simple"

# Load plugins
plugins=(
  git
  sudo
  tmuxinator
  web-search
  yarn
  npm
  zsh-autosuggestions
  zsh-vi-mode
  zsh-autocomplete
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Keybinds
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Export
export EDITOR="nvim"
export VISUAL="nvim"

case $(uname -s) in
  Darwin)
    export JAVA_HOME=/opt/homebrew/opt/openjdk@21
  ;;
  Linux)
    export JAVA_HOME=/usr/lib/jvm/java-25-openjdk
  ;;
esac

export PATH=$PATH:/opt/gradle/bin

# Aliases
alias glor="git log --oneline --reverse"
alias c="clear"
alias vi="nvim"

# bun completions
[ -s "/Users/thienannguyen/.bun/_bun" ] && source "/Users/thienannguyen/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
