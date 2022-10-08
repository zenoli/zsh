# ============================================
# == THEME
# ============================================

DEFAULT_THEME="tokyonight"
[[ -z $MY_THEME ]] && export MY_THEME=$DEFAULT_THEME 

# source "$ZDOTDIR/themes/$MY_THEME.zsh"
THEME=$([[ -e $ZDOTDIR/.theme ]] && cat $ZDOTDIR/.theme || echo $DEFAULT_THEME)

source "$ZDOTDIR/themes/$THEME.zsh"
