#!/bin/bash
alias dimages="docker image ls"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dstart="docker start"
alias dstop="docker stop"
function dstartall { docker start $(docker ps -a -q); }; export -f dstartall
function dstopall { docker stop $(docker ps -a -q); }; export -f dstopall
alias drm="docker rm"
alias drmall="docker system prune"
alias drmimage="docker image rm"
alias drmimages="docker image prune"

alias dbuild="docker build -t"
alias dcreate="docker create"
alias dcompose="docker-compose -f docker-compose.yml -f docker-compose.development.yml up"

echo 'docker: d [images, ps, psa, start(all), stop(all), rm(all/image/images), build, create, compose]'