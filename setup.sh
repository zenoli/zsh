#!/bin/bash

# Make ~/.zshenv setup ZDOTDIR and load ~/.config/zsh/.zshenv
echo "ZDOTDIR=$HOME/.config/zsh" > ~/.zshenv
echo "source \$ZDOTDIR/.zshenv" >> ~/.zshenv

