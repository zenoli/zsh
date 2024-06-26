function () {
    local fzf_home="$XDG_DATA_HOME/zsh/fzf"
    local fzf_repo='https://github.com/junegunn/fzf.git'
    if [[ ! -d $fzf_home ]] ; then
        echo "Installing fzf..."
        rm -rf $fzf_home
        git clone --depth 1 "$fzf_repo" "$fzf_home"
        "$fzf_home/install" --bin
    fi

    # Setup fzf
    # ---------
    if [[ ! "$PATH" == *$fzf_home/bin* ]]; then
        PATH="${PATH:+${PATH}:}$fzf_home/bin"
    fi

    # Auto-completion
    # ---------------
    source "$fzf_home/shell/completion.zsh"

    # Key bindings
    # ------------
    source "$fzf_home/shell/key-bindings.zsh"

    FZF_DEFAULT_OPTS="--layout=reverse"
}

