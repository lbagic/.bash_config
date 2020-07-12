# Installation

## Setup bash config
Run commands (modify echo/append command to point to config):

```bash
cd ~; git clone git@github.com:lbzg/.bash_config.git
```
```bash
echo "
cfg=/home/bax/.bash_config
ws=/home/bax/workspace

if [ -d $cfg/inject ] ; then
  echo Injecting config...
  for f in $cfg/inject/*; do source $f ; done
fi
" >> ~/.bashrc
```

# Misc

## Open wsl to ~ (/home/user)
```bash
# windows terminal settings
{
    "guid": "{07b52e3e-de2c-5db4-bd2d-ba144ed6c273}",
    "hidden": false,
    "name": "Ubuntu-20.04",
    "source": "Windows.Terminal.Wsl",
    "commandline": "wsl.exe ~" # <-- add setting
},
```

## Create SSH key
```bash
ssh-keygen -t rsa -b 4096 -C "COMMENT"
```
