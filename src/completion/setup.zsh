function() {
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
