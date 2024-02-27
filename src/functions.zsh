function() {
    fpath+="$ZDOTDIR/src/functions"
    for fn in "$ZDOTDIR/src/functions"/*; do
        autoload -Uz "$(basename "$fn")"
    done
}
