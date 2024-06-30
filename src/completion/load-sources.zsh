function () {
    local completion_dir="$XDG_DATA_HOME/zsh/completion"
    local sources_dir="$ZDOTDIR/src/completion/sources"

    [[ -d "$completion_dir" ]] || mkdir -p "$completion_dir"
    fpath+="$completion_dir"

    for completion_src in $sources_dir/*; do
        cmd_name=$(basename "$completion_src")
        cmd_name="${cmd_name%.*}"
        cmd_exists $cmd_name \
            && [[ ! -f "$completion_dir/_$cmd_name" ]] \
            && source $completion_src > "$completion_dir/_$cmd_name"
    done
}

