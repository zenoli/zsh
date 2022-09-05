#!/bin/bash

ZDOTDIR=$HOME/.config/zsh

# Make ~/.zshenv setup ZDOTDIR and load ~/.config/zsh/.zshenv
echo "export ZDOTDIR=$ZDOTDIR" > ~/.zshenv
echo "source \$ZDOTDIR/.zshenv" >> ~/.zshenv

if [[ ! -d $ZDOTDIR/antidote ]];then
    git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/antidote
else
    echo "antigen already installed in ${ZDOTDIR:-~}"
fi
