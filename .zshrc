function load {
    source "$ZDOTDIR/$1"
}

load "src/functions.zsh"
load "src/mise.zsh"
load "src/completion/load-sources.zsh"
load "src/completion/setup.zsh"
load "src/instant-prompt.zsh"
load "src/antidote.zsh"
load "src/fzf.zsh"
load "src/vi-mode.zsh"
load "src/theme.zsh"
load "src/history.zsh"
load "src/aliases.zsh"

unfunction load
