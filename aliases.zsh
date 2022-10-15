# ============================================
# == ALIASES
# ============================================

alias ra="ranger"
alias ranger="source ranger"
alias gw="./gradlew"
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
# alias nvim="nvim --listen $NVIM_PIPE_DIR/$(ls $NVIM_PIPE_DIR | wc -l).pipe"
alias nvim="nvim --listen $NVIM_PIPE_DIR/$(echo $(pwd)_$RANDOM | base64).pipe"

# Git
alias gc=fzf-git-checkout


# JAVA JDK switches
alias setjdk8="export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64"
alias setjdk13="export JAVA_HOME=/usr/lib/jvm/jdk-13.0.2"
alias setjdk11="export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64"
