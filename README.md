# Installation

Run the following command with proper cfg path.
Run "apt update", "apt install nodejs" & "code" to install dependencies.

```bash
echo "
ws="/home/bax/workspace"
cfg="/home/bax/bash.config"
alias ws="cd ${ws}"
alias cfg="code ${cfg}"

if [ -d "${cfg}/inject" ] ; then
    echo "Injecting config..."
    for f in "${cfg}/inject/"*; do source "$f"; done
fi
" >> ~/.bashrc
```
