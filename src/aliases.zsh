function () {
    alias pa='source $(poetry env info --path)/bin/activate'
    alias {lf,f}='lfcd'
    alias v=nvim
    alias man='LC_CTYPE=C man' # Render man page in ASCII charset (otherwise I got 
                               # inconsistent '-' characters on Ubuntu 23.10 which 
                               # made searching manpages annoying)
}
