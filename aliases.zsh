# ============================================
# == ALIASES
# ============================================

alias ra="ranger"
alias ranger="source ranger"

function edit_config {
    echo "$EDITOR $1/$2" +"'cd $1'"
}
# Configs
alias zshconfig="$(edit_config $ZDOTDIR .zshrc)"
alias tmuxconfig="$(edit_config $XDG_CONFIG_HOME/tmux tmux.conf)"
alias nvimconfig="$(edit_config $XDG_CONFIG_HOME/nvim init.lua)"
alias awesomeconfig="$(edit_config $XDG_CONFIG_HOME/awesome rc.lua)"
alias vimconfig="$(edit_config $HOME .vimrc)"
# alias tmuxconfig="$EDITOR $XDG_CONFIG_HOME/tmux/tmux.conf"


alias algolab="~/algolab.sh"
alias tester="~/tester.sh"
alias vcai="~/Documents/algolab/vscode_algolab/vscode_algolab_init.sh"
alias o="xdg-open"
alias resetwifi="sudo service network-manager restart"
alias clip="xclip -selection clipboard"
alias countdown="~/go/bin/countdown"
alias picom_restart="pkill picom && sleep 0.2 && picom &!"
alias android-studio="/opt/android-studio/bin/studio.sh 2> /dev/null &!"
alias gradle="/opt/gradle/gradle-7.2/bin/gradle"

# Git
alias gc=fzf-git-checkout


# JAVA JDK switches
alias setjdk8="export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64"
alias setjdk13="export JAVA_HOME=/usr/lib/jvm/jdk-13.0.2"
alias setjdk11="export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64"
