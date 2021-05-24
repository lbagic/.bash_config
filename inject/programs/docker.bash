#!/bin/bash
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dimg="docker image ls"
alias dnet="docker network ls"
alias dvol="docker volume ls"
alias dsys="docker ps -a; docker image ls; docker network ls; docker volume ls"

alias dstart="docker start"
alias dstop="docker stop"

function dstartall { docker start $(docker ps -a -q); }; export -f dstartall
function dstopall { docker stop $(docker ps -a -q); }; export -f dstopall

alias drm="docker rm"
alias dprune="docker system prune -a"

alias dit="docker exec -it"
alias dup="docker-compose up"
alias ddown="docker-compose down"
