# Installation

Modify paths to config.bash & workspace directory.
Run the command to append config to .bashrc.

```bash
echo "
# bash config
cfg="/home/bax/.bash_config"
ws="home/bax/workspace"

if [ -d ${cfg}/inject ] ; then
  echo "Injecting config..."
  for f in ${cfg}/inject/*; do source "$f"; done
fi
" >> ~/.bashrc
```
