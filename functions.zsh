# ============================================
# == FUNCTIONS
# ============================================

function print_colors {
	for i in {0..255}; do 
		print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; 
	done
}

function man {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

function m {
    echo $#
    [[ $# -eq 1 ]] && man $1
    [[ $# -eq 2 ]] && LESS=+"/^\s*$2" man $1
}
