# Installation

Modify path to config.bash & run the command.

```bash
echo "
bashcfg="/home/bax/.bash_config/config.bash"
if [ -f "${bashcfg}" ] ; then
  source ${bashcfg}
fi
" >> ~/.bashrc
```
