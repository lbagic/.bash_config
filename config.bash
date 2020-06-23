#!/bin/bash
if [ -d ./inject ] ; then
  echo "Injecting config..."
  for f in ./inject/*; do source "$f"; done
fi