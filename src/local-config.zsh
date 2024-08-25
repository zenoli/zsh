function () {
    function try_load_local_config {
        local_cfg=".local.zsh"
        [[ -f "$local_cfg" ]] && source $local_cfg
    }

    chpwd_functions=("${chpwd_functions[@]}" "try_load_local_config")

    # In case the init directory contains a local config
    try_load_local_config
}
