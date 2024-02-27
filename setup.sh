#!/bin/bash

if [[ -n "$ZDOTDIR" ]]; then
    echo "ZDOTDIR already set to $ZDOTDIR".
    echo "Doing nothing..."
    exit 0
fi

ZDOTDIR=$HOME/.config/zsh

# Make ~/.zshenv setup ZDOTDIR and load ~/.config/zsh/.zshenv
echo "export ZDOTDIR=$ZDOTDIR" >~/.zshenv
echo "source \$ZDOTDIR/.zshenv" >>~/.zshenv
echo "ZDOTDIR set to $ZDOTDIR"
