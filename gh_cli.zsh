# ============================================
# == Github CLI 
# ============================================

completion_dir="$XDG_DATA_HOME/zsh/completion"

# Develop feature branch
function ghd {
    issue=$( \
        gh issue list --json number,title \
        | jq '.[] | { number, title } | join(" ")' \
        | sed 's/"//g' \
        | fzf
    )
    number=$(echo $issue | cut -d ' ' -f1)
    title=$(echo $issue | cut -d ' ' -f2-)
    branch_name="feature/${number} ${title}"
    gh issue develop $number --name $branch_name --checkout
}

# Setup completion
[[ -d $completion_dir ]] || mkdir -p $completion_dir
[[ ! -f $completion_dir/_gh ]] \
    && $(command -v gh > /dev/null) \
    && gh completion -s zsh > ~/.local/share/zsh/completion/_gh

fpath=(~/.local/share/zsh/completion $fpath)
autoload -U compinit
compinit -i
