#!/bin/bash

ZDOTDIR=$HOME/.config/zsh

# Make ~/.zshenv setup ZDOTDIR and load ~/.config/zsh/.zshenv
echo "export ZDOTDIR=$ZDOTDIR" > ~/.zshenv
echo "source \$ZDOTDIR/.zshenv" >> ~/.zshenv
echo "ZDOTDIR set to $ZDOTDIR"

if [[ ! -d $ZDOTDIR/antidote ]];then
    git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/antidote
echo "antidote cloned to ${ZDOTDIR:-~}/antidote"
else
    echo "antidote already installed in ${ZDOTDIR:-~}"
fi
