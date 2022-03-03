Time/Date/Language
Fix Locale Warnings:

```
apt-get install language-pack-en
```

Set Timezone:

```
dpkg-reconfigure tzdata
```

Install Time Daemon:

```
apt-get install ntp
```

General
Install Manual Pages:

```
apt-get install man
```

Add Domain name

```
vi /etc/hosts
```

127.0.0.1 localhost
123.456.789.012 computername.domain.com computername (replace external ip)

Security
Add Administrative User (with home directory):

```
useradd myusername -m
```

Give Admin user Sudo Powers

```
visudo
```

myusername ALL=(ALL) ALL

Set Admin Password

```
passwd myusername
```

Set Admin Shell Preference (optional)

```
vi /etc/passwd
```

myusername: […] :bash

Disable Root SSH Login:

```
vi /etc/ssh/sshd_config
```

PermitRootLogin no <–MAKE SURE YOU CREATED ADMIN & PASSWORD

Tighten default permissions for file & directory creation:

```
vi /etc/profile
```

umask 027 (no default access for others)

Install and Set Up Firewall

```
apt-get install ufw
```

```
ufw allow ssh <–DO NOT FORGET THIS
```

```
ufw enable
```

Other:

```
ssh-copy-id -i ~/.ssh/id_esdf923.pub 192.165.23.24
```
