function () {
    local local_cfg="$ZDOTDIR/local.zsh"
    [[ -f "$local_cfg" ]] && source "$local_cfg"
}
