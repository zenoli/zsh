function () {
    local antidote_home="$XDG_DATA_HOME/zsh/antidote"
    local bundlefile="$ZDOTDIR/src/plugins.txt"

    # Normally called `.zsh_plugins.txt`
    local completion_dir="$XDG_DATA_HOME/zsh/completion"
    # Normally called `.zsh_plugins.zsh`
    local staticfile="$XDG_CACHE_HOME/zsh/zsh_plugins.zsh"

    if [[ ! -d "$antidote_home" ]]; then
        echo "Installing antidote..."
        git clone --depth=1 https://github.com/mattmc3/antidote.git "$antidote_home"
        echo "antidote cloned to $antidote_home"
    fi

    zstyle ':antidote:bundle' use-friendly-names 'yes'
    source "$antidote_home/antidote.zsh"
    antidote load "$bundlefile" "$staticfile"
}
