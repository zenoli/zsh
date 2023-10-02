# ============================================
# == Github CLI 
# ============================================

completion_dir="$XDG_DATA_HOME/zsh/completion"


# Setup completion
[[ -d $completion_dir ]] || mkdir -p $completion_dir
[[ ! -f $completion_dir/_gh ]] \
    && $(command -v gh > /dev/null) \
    && gh completion -s zsh > ~/.local/share/zsh/completion/_gh

fpath=(~/.local/share/zsh/completion $fpath)
autoload -U compinit
compinit -i
