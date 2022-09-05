# MY_PROMPT=~/.config/zsh/prompts/p10k_classic_singlerow.zsh
MY_PROMPT="$XDG_CONFIG_HOME/zsh/prompts/p10k_classic_multirow.zsh"
[[ ! -f $MY_PROMPT ]] || source $MY_PROMPT
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_last

# Prompt colors that fit nicely with tokyonight color theme
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=2
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=9
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIVIS_CONTENT_EXPANSION=''

# Better visuality for search highlight in manpage search.
less_termcap[so]="${fg_bold[black]}${bg[blue]}"
