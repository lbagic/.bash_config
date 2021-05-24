#!/bin/bash

# Workspace
alias ws="cd ${ws}"
alias cfg="cd ${cfg}"
alias ccfg="code ${cfg}"

p="${ws}/projects"
alias p="cd ${p}"
s="${ws}/sintezis"
alias s="cd ${s}"
t="${ws}/test"
alias t="cd ${t}"
stack="${ws}/stack"
alias stack="cd ${stack}"
gop="${ws}/projects/go/src/github.com/lbzg"
alias gop="cd ${gop}"

# Projects /p
digimeni="${p}/digimeni"
alias digimeni="cd ${digimeni}"
# Projects / s
sstack="${s}/stack"
alias sstack="cd ${sstack}"
elude="${s}/elude"
alias elude="cd ${elude}"
atc="${s}/auto-tco"
alias atc="cd ${atc}"

echo "workspace: ws, cfg, p, s, stack"
echo "projects: elude, digimeni"
