# The system wide config /etc/zsh/zshrc calls compinit by default.
# This is the default on Ubuntu. They provide a way to disable this
# using the following flag:

# shellcheck disable=2034
skip_global_compinit=1
source "$ZDOTDIR/src/xdg.zsh"

export HISTFILE="$XDG_STATE_HOME/zsh/zsh_history"
export HISTSIZE=10000
export SAVEHIST="$HISTSIZE"
export EDITOR="nvim"
export VISUAL="nvim"
export TERM="tmux-256color"

# Needed for plugin `unixorn/fzf-zsh-plugin`, otherwise it tries to install
# fzf by itself in $HOME which while want to avoid.
export FZF_PATH="$XDG_DATA_HOME/zsh/fzf"
