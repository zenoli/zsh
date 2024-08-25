function () {
    alias pa='source $(poetry env info --path)/bin/activate'
    alias {lf,f}='lfcd'
    alias o=xdg-open
    alias v=nvim
    alias gc='fzf-git-checkout'
    alias man='LC_CTYPE=C man' # Render man page in ASCII charset (otherwise I got 
                               # inconsistent '-' characters on Ubuntu 23.10 which 
                               # made searching manpages annoying)
}
