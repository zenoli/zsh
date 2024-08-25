function() {
    local zsh_state_dir=$(dirname $HISTFILE)
    if [[ ! -d $zsh_state_dir ]]; then
        echo "Creating $zsh_state_dir"
        mkdir -p $zsh_state_dir
    fi

    setopt hist_ignore_all_dups
    setopt hist_ignore_dups
    setopt hist_save_no_dups
    setopt no_share_history # is set by oh-my-zsh history plugin --> explizitly disable it
    setopt inc_append_history
}
