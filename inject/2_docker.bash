#!/bin/bash
alias dps="docker ps"
alias dpsa="docker ps -a"

alias dimages="docker image ls"
alias dnetworks="docker network ls"
alias dvolumes="docker volume ls"
alias dsystem="docker ps -a; docker image ls; docker network ls; docker volume ls"

alias dstart="docker start"
function dstartall { docker start $(docker ps -a -q); }; export -f dstartall
alias dstop="docker stop"
function dstopall { docker stop $(docker ps -a -q); }; export -f dstopall

alias drm="docker rm"
alias dcompose="docker-compose -f docker-compose.yml -f docker-compose.development.yml up"

echo 'docker: d [ps, psa, images, networks, volumes, system, start(all), stop(all), rm, compose]'