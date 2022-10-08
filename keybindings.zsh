# ============================================
# == KEYBINDINGS
# ============================================

bindkey -s '^o' 'cd $($ZDOTDIR/scripts/fzf_fd d)^M'
bindkey -s '^[o' '$EDITOR $($ZDOTDIR/scripts/fzf_fd f)^M'
