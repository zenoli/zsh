# Show bar cursor as we start in insert mode
echo -ne "\e[5 q"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

zstyle ':antidote:bundle' use-friendly-names 'yes'
# source antidote
source ${ZDOTDIR:-~}/antidote/antidote.zsh

antidote load

autoload -Uz promptinit && promptinit && prompt powerlevel10k
# autoload -Uz compinit && compinit

# ============================================
# == VI-MODE
# ============================================
KEYTIMEOUT=1
VI_MODE_SET_CURSOR=true
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
bindkey -M vicmd '^f' edit-command-line
bindkey -M viins '^f' edit-command-line

# # vi mode
# bindkey -v
# export KEYTIMEOUT=1

# # Change cursor shape for different vi modes.
# function zle-keymap-select {
#   if [[ ${KEYMAP} == vicmd ]] ||
#      [[ $1 = 'block' ]]; then
#     echo -ne '\e[1 q'
#   elif [[ ${KEYMAP} == main ]] ||
#        [[ ${KEYMAP} == viins ]] ||
#        [[ ${KEYMAP} = '' ]] ||
#        [[ $1 = 'beam' ]]; then
#     echo -ne '\e[5 q'
#   fi
# }
# zle -N zle-keymap-select
# zle-line-init() {
#     zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
#     echo -ne "\e[5 q"
# }
# zle -N zle-line-init
# echo -ne '\e[5 q' # Use beam shape cursor on startup.
# preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# ============================================
# == THEME
# ============================================
DEFAULT_THEME="tokyonight"
[[ -z $MY_THEME ]] && export MY_THEME=$DEFAULT_THEME 
source "$ZDOTDIR/themes/$MY_THEME.zsh"

