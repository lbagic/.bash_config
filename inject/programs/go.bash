#!/bin/bash
# export GOPATH=/home/$USER/workspace/projects/go
# export GOROOT=/usr/local/go/
export PATH=$PATH:/usr/local/go/bin

# set PATH so it includes user's private bin if it exists
# if [ -d "$HOME/workspace/projects/go/bin" ] ; then
#     PATH="$HOME/workspace/projects/go/bin:$PATH"
# fi

alias gorun="go run main.go"
alias goservice="./$(basename $PWD) --config=config.toml"
