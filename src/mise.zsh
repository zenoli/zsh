if ! cmd_exists mise; then
    echo "Installing mise-en-place"
    curl https://mise.run | sh

    # Required for completion to work
    mise use --global usage 
fi

export PATH="$HOME/.local/share/mise/shims:$PATH"
