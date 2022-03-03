# Document the host information

- machine name
- ip address
- mac address
- date

# system update

- `apt-get update`
- `apt-get upgrade -y`

# secure ssh

- `vim /etc/ssh/sshd_config`
- Change the default port number 22 to something else e.g. 99.
- Make sure that root cannot login remotely through SSH: `PermitRootLogin no`
- Allow some specific users: `AllowUsers [username]`

### additional options

- Protocol2
- IgnoreRhosts to yes
- HostbasedAuthentication no
- PermitEmptyPasswords no
- X11Forwarding no
- MaxAuthTries 5
- Ciphers aes128-ctr,aes192-ctr,aes256-ctr
- ClientAliveInterval 900
- ClientAliveCountMax 0
- UsePAM yes

### permissions

- Finally, set the permissions on the sshd_config file so that only root users can change its contents:
  - `chown root:root /etc/ssh/sshd_config`
  - `chmod 600 /etc/ssh/sshd_config`
- enable SELinux
  - `vim /etc/selinux/config`
    - `SELINUX=enforcing`
- Network parameters:
  - Disable the IP Forwarding by setting the net.ipv4.ip_forward parameter to 0 in “/etc/sysctl.conf”
  - Disable the Send Packet Redirects by setting the net.ipv4.conf.all.send_redirects and net.ipv4.conf.default.send_redirects parameters to 0 in “/etc/sysctl.conf”
  - Disable ICMP Redirect Acceptance by setting the net.ipv4.conf.all.accept_redirects and net.ipv4.conf.default.accept_redirects parameters to 0 in “/etc/sysctl.conf”
  - Enable Bad Error Message Protection by setting the net.ipv4.icmp_ignore_bogus_error_responses parameter to 1 in “/etc/sysctl.conf”
- permissions:
  - Set User/Group Owner and Permission on “/etc/anacrontab”, “/etc/crontab” and “/etc/cron.\*” by executing the following commands:
    ```sh
    chown root:root /etc/anacrontab
    chmod og-rwx /etc/anacrontab
    chown root:root /etc/crontab
    chmod og-rwx /etc/crontab
    chown root:root /etc/cron.hourly
    chmod og-rwx /etc/cron.hourly
    chown root:root /etc/cron.daily
    chmod og-rwx /etc/cron.daily
    chown root:root /etc/cron.weekly
    chmod og-rwx /etc/cron.weekly
    chown root:root /etc/cron.monthly
    chmod og-rwx /etc/cron.monthly
    chown root:root /etc/cron.d
    chmod og-rwx /etc/cron.d
    ```
  - Set the right and permissions on “/var/spool/cron” for “root crontab”
    ```
    chown root:root <crontabfile>
    chmod og-rwx <crontabfile>
    ```
  - Set User/Group Owner and Permission on “passwd” file
    ```
    chmod 644 /etc/passwd
    chown root:root /etc/passwd
    ```
  - Set User/Group Owner and Permission on the “group” file
    ```
    chmod 644 /etc/group
    chown root:root /etc/group
    ```
  - Set User/Group Owner and Permission on the “shadow” file
    ```
    chmod 600 /etc/shadow
    chown root:root /etc/shadow
    ```
  - Set User/Group Owner and Permission on the “gshadow” file
    ```
    chmod 600 /etc/gshadow
    chown root:root /etc/gshadow
    ```

# additional process hardening

First, Restrict Core Dumps by:

- Adding hard core 0 to the “/etc/security/limits.conf” file
- Adding fs.suid_dumpable = 0 to the “/etc/sysctl.conf” file

Second, configure Exec Shield by:

- Adding kernel.exec-shield = 1 to the “/etc/sysctl.conf” file

Third, enable randomized Virtual Memory Region Placement by:

- Adding kernel.randomize_va_space = 2 to the “/etc/sysctl.conf” file
