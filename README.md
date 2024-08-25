# zsh

My zsh config

## Setup

1. Clone this repo to `~/.config/zsh`
2. `cd` to `~/.config/zsh` and run `chmod +x ./setup.sh`
3. Run `./setup.sh`

**IMPORTANT**: `setup.sh` will overwrite the content of `~/.zshenv` so create a backup if you want to keep it.
The setup script will set `ZDOTDIR` to `~/.config/zsh` and setup antidote - a plugin manager for zsh.

## Completions

If a program provides completion sources, you can add them as follows:

Example: Github CLI (`gh`) provides a commmand to install completions:

```shell
gh completion -s zsh
```

Hence, you need to create a file `src/completion/sources/gh.zsh` and insert the command there.

The completions will be automatically setup when you source `.zshrc`.

## Local configs

If a directory contains a file `.local.zsh`, it will be automatically sourced.
