# Log in as root

```
ssh root@your_server_ip
```

# Create a new user

```
adduser sammy
```

# Set admin privileges for new user

```
usermod -aG sudo sammy
```

# Set up firewall

check enabled fws

```
ufw app list
```

set up

```
ufw allow OpenSSH
ufw enable
ufw status
```

# Enabling account access

copy root ssh keys to account

```
rsync --archive --chown=sammy:sammy ~/.ssh /home/sammy
```
