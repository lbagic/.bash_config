#!/bin/bash
# Workspace 
alias ws="cd ${ws}"
alias cfg="cd ${cfg}"
alias ccfg="code ${cfg}"

p="${ws}/projects"
alias p="cd ${p}"
s="${ws}/sintezis"
alias s="cd ${s}"
stack="${ws}/stacks"
alias stack="cd ${stack}"
gop="${ws}/projects/go/src/github.com/lbzg"
alias gop="cd ${gop}"

# Projects
elude="${s}/elude"
alias elude="cd ${elude}"
digimeni="${p}/digimeni"
alias digimeni="cd ${digimeni}"

echo "workspace: ws, cfg, p, s, stack"
echo "projects: elude, digimeni"

