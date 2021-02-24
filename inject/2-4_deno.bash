#!/bin/bash
export DENO_INSTALL=/home/$USER/.local
export PATH=$DENO_INSTALL/bin:$PATH

alias denorun="deno run --allow-net"

echo 'deno: deno [run]'
