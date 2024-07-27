function() {
    fpath+="$ZDOTDIR/src/functions"
    for fn in "$ZDOTDIR/src/functions"/*; do
        autoload -Uz "$(basename "$fn")"
    done
}

function edit_config {
    tmux rename-window " $(basename $1)"
    nvim $1/$2 +"cd $1"
}

function cmd_exists {
    command -v "$1" &> /dev/null
}

function zshconfig { edit_config $ZDOTDIR .zshrc }
function tmuxconfig { edit_config $XDG_CONFIG_HOME/tmux tmux.conf }
function nvimconfig { edit_config $XDG_CONFIG_HOME/nvim init.lua }
function awesomeconfig { edit_config $XDG_CONFIG_HOME/awesome rc.lua }
function kittyconfig { edit_config $XDG_CONFIG_HOME/kitty kitty.conf }
function vimconfig { edit_config $HOME .vimrc }
function lfconfig { edit_config $XDG_CONFIG_HOME/lf lfrc }
