# ============================================
# == PLUGINS
# ============================================

zstyle ':antidote:bundle' use-friendly-names 'yes'
source ${ZDOTDIR:-~}/antidote/antidote.zsh
antidote load

autoload -Uz promptinit && promptinit && prompt powerlevel10k
