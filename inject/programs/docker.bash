#!/bin/bash
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dimages="docker image ls"
alias dnetworks="docker network ls"
alias dvolumes="docker volume ls"
alias dsystem="docker ps -a; docker image ls; docker network ls; docker volume ls"

alias dstart="docker start"
alias dstop="docker stop"

function dstartall { docker start $(docker ps -a -q); }; export -f dstartall
function dstopall { docker stop $(docker ps -a -q); }; export -f dstopall

alias drm="docker rm"
alias dprune="docker system prune -a"

alias dup="docker-compose up"
alias ddown="docker-compose down"
alias ddev="docker-compose -f docker-compose.yml -f docker-compose.development.yml up"
alias dlocal="docker-compose -f docker-compose.yml -f docker-compose.local.yml up"
alias dstage="docker-compose -f docker-compose.yml -f docker-compose.staging.yml up"
alias dprod="docker-compose -f docker-compose.yml -f docker-compose.production.yml up"

echo '[docker/d]: ps, psa, images, networks, volumes, system, start(all), stop(all), rm, prune, up, down, dev, local, stage, prod'