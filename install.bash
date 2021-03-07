#!/bin/bash

echo "
# bash config
cfg=\"/home/\$USER/.bash_config\"
ws=\"/home/\$USER/workspace\"
if [ -d \$cfg/inject ] ; then
  echo Injecting config...
  for f in \$cfg/inject/*; do source \$f ; done
fi

" >> ~/.bashrc