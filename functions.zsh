# ============================================
# == FUNCTIONS
# ============================================

function print_colors {
	for i in {0..255}; do 
		print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; 
	done
}

# lfcd
function f {
    tmp="$(mktemp)"
    lfrun -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

function man {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;45;30m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

function m {
    echo $#
    [[ $# -eq 1 ]] && man $1
    [[ $# -eq 2 ]] && LESS=+"/^\s*$2" man $1
}

function ng_cmp {
    $(command -v ng > /dev/null) && source <(ng completion script)
}

function edit_config {
    tmux rename-window " $(basename $1)"
    nvim $1/$2 +"cd $1"
}

function zshconfig { edit_config $ZDOTDIR .zshrc }
function tmuxconfig { edit_config $XDG_CONFIG_HOME/tmux tmux.conf }
function nvimconfig { edit_config $XDG_CONFIG_HOME/nvim init.lua }
function awesomeconfig { edit_config $XDG_CONFIG_HOME/awesome rc.lua }
function kittyconfig { edit_config $XDG_CONFIG_HOME/kitty kitty.conf }
function vimconfig { edit_config $HOME .vimrc }
function lfconfig { edit_config $XDG_CONFIG_HOME/lf lfrc }

