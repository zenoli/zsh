# The system wide config /etc/zsh/zshrc calls compinit by default.
# This is the default on Ubuntu. They provide a way to disable this
# using the following flag:
skip_global_compinit=1
source "$ZDOTDIR/src/xdg.zsh"

export HISTFILE="$XDG_STATE_HOME/zsh/zsh_history"
export EDITOR="nvim"
export VISUAL="nvim"
export TERM="tmux-256color"

export NVM_DIR="$XDG_DATA_HOME/nvm"
