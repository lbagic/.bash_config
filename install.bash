#!/bin/bash
echo "
# bash config
cfg=\"/home/\$USER/.bash_config\"
ws=\"/home/\$USER/workspace\"

inject_files() {
    for x in \$1/*; do
        if [ -f \$x ]; then source \$x; fi
        if [ -d \$x ]; then inject_files \$x; fi
    done
}

inject_files \$cfg/inject

" >> ~/.bashrc