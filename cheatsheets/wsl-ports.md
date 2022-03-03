## Map wsl ports to windows (task scheduler)

triggers: logon  
actions: [program] powershell; [args] -File \\\wsl\$\Ubuntu-20.04\home\bax\\.bash_config\powershell\forward-wsl.ps1
