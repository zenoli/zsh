# ============================================
# == KEYBINDINGS
# ============================================

bindkey -s '^o' '$EDITOR $(fzf_fd f)^M'
bindkey -s '^[o' 'cd $(fzf_fd d)^M'
