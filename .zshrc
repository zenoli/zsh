function load {
    source "$ZDOTDIR/$1"
}

load "src/instant-prompt.zsh"
load "src/utils.zsh"
load "src/completion.zsh"
load "src/antidote.zsh"
load "src/fzf.zsh"
load "src/vi-mode.zsh"
load "src/theme.zsh"
load "src/history.zsh"
load "src/aliases.zsh"
load "src/functions.zsh"

unfunction load
