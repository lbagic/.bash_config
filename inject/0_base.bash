#!/bin/bash
alias ~~="cd ~"
alias C="cd /mnt/c"
alias D="cd /mnt/d"

alias wcode="/mnt/c/Users/bax/AppData/Local/Programs/Microsoft\ VS\ Code/Code.exe"
alias c="code ."
alias e="explorer.exe ."
alias q="exit"
alias r="cl; exec bash"
alias cl="clear"
alias pingg="ping www.google.com"

alias h="history"
alias hcl="history -c"
alias hf="history | grep"

alias l='ls -AF'
alias ll='ls -alF'
alias lr="ls -aFR"
alias lf="ls -alF | grep"
alias lfr="ls -alFR | grep"

cmd() {
  CMD=$1
  shift;
  ARGS=$@
  WIN_PWD=`wslpath -w "$(pwd)"`
  cmd.exe /c "pushd ${WIN_PWD} && ${CMD} ${ARGS}"
}

echo 'base: ~~, C, D, wcode, c, e, q, r, cl, pingg, h, hcl, hf, l, ll, lr, lf, lfr'