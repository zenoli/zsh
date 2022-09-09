# ============================================
# == THEME
# ============================================

DEFAULT_THEME="tokyonight"
[[ -z $MY_THEME ]] && export MY_THEME=$DEFAULT_THEME 
source "$ZDOTDIR/themes/$MY_THEME.zsh"
