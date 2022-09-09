# ============================================
# == FUNCTIONS
# ============================================

function fzf_cd {
    cd $(find -L ~ -path ~/.cache -prune -o -path ~/.local/share -prune -o -mindepth 1 -type d -print 2> /dev/null | fzf --height=30% --reverse)
}

function fzf_edit {
    $EDITOR $(find -L ~ -path ~/.cache -prune -o -path ~/.local/share -prune -o -mindepth 1 -type f -print 2> /dev/null | fzf --height=30% --reverse)

}

function print_colors {
	for i in {0..255}; do 
		print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; 
	done
}

function m {
    echo $#
    [[ $# -eq 1 ]] && man $1
    [[ $# -eq 2 ]] && LESS=+"/^\s*$2" man $1
}
