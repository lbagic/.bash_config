#!/bin/bash
alias ~~="cd ~"
alias C="cd /mnt/c"
alias D="cd /mnt/d"

alias c="code ."
alias e="explorer.exe ."
alias q="exit"
alias cl="clear"

alias h="history"
alias hcl="history -c"
alias hf="history | grep"

alias l='ls -AF'
alias ll='ls -alF'
alias lr="ls -aFR"
alias lf="ls -alF | grep"
alias lfr="ls -alFR | grep"

alias restart="exec bash"

# alias hosts="code C:/Windows/System32/drivers/etc/hosts"

echo 'base: ~~, C, D, c, e, q, cl, h, hcl, hf, l, ll, la, lr, lf, lfr, restart'