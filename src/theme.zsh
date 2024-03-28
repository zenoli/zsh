function () {
    local theme_file="$ZDOTDIR/src/themes/default.zsh" 
    autoload -Uz promptinit && promptinit && prompt powerlevel10k
    [[ ! -f "$theme_file" ]] || source "$theme_file"
}

