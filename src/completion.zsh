function() {

    local completion_dir="$XDG_DATA_HOME/zsh/completion"

    [[ -d "$completion_dir" ]] || mkdir -p "$completion_dir"
    fpath+="$completion_dir"

    cmd_exists gh \
        && [[ ! -f $completion_dir/_gh ]] \
        && gh completion -s zsh > $completion_dir/_gh

    cmd_exists poetry \
        && [[ ! -f $completion_dir/_poetry ]] \
        && poetry completions zsh > $completion_dir/_poetry

    local zsh_cache_dir="$XDG_CACHE_HOME/zsh"
    if [[ ! -d $zsh_cache_dir ]]; then
        echo "Creating $zsh_cache_dir"
        mkdir -p $zsh_cache_dir
    fi
    local zcompdump_file="$zsh_cache_dir/zcompdump"

    autoload -Uz compinit

    # cache .zcompdump for about a day
    if [[ $zcompdump_file(#qNmh-20) ]]; then
        compinit -C -d "$zcompdump_file"
    else
        compinit -i -d "$zcompdump_file"; touch "$zcompdump_file"
    fi
    {
        # compile .zcompdump
        if [[ -s "$zcompdump_file" && (! -s "${zcompdump_file}.zwc" || "$zcompdump_file" -nt "${zcompdump_file}.zwc") ]]; then
            zcompile "$zcompdump_file"
        fi
    } &!
}
