# Installation

## Setup bash config

```
cd ~; git clone git@github.com:lbzg/.bash_config.git
```

```
bash .bash_config/setup.bash
```

# Misc

## Scaffold workspace

```
cd ~; mkdir -p workspace/projects; mkdir -p workspace/sintezis;
```

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
ssh-keygen -t rsa -b 4096 -C "NAME"
```

## Map wsl ports to windows (task scheduler)

triggers: logon  
actions: [program] powershell; [args] -File \\\wsl\$\Ubuntu-20.04\home\bax\\.bash_config\powershell\forward-wsl.ps1
