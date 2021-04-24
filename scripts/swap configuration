= Swap configuration =

== Linux ubuntu ==

Create a swap file
` sudo fallocate -l 1G /swapfile `

Verify swap
` ls -lh /swapfile `

Enable swap file
` sudo chmod 600 /swapfile `

Verify permission
` ls -lh /swapfile `

Mark file as swap
` sudo mkswap /swapfile `

Enable swap file
` sudo swapon /swapfile `

Verify swap file
` sudo swapon --show `

=== Make swap file permanent ===

Backup swap file
` sudo cp /etc/fstab /etc/fstab.bak `

Add swap file information to end of fstap.bak
` echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab `

Configure swappiness value
` echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf `

Configure cache pressure
` echo 'vm.vfs_cache_pressure=50' | sudo tee -a /etc/sysctl.conf `