#!/bin/bash
echo "Creating swapfile"
fallocate -l 1024M /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo "Loading swapfile"
echo "/swapfile	none	swap	defaults	0	0" >> /etc/fstab
cat /etc/fstab
echo "kernel.sysrq = 1" >> /etc/sysctl.d/99.sysctl.conf
echo "vm.vfs_cache_pressure = 50" >> /etc/sysctl.d/99.sysctl.conf
echo "vm.swappiness = 5" >> /etc/sysctl.d/99.sysctl.conf
echo "Swapfile settings"
cat /etc/sysctl.d/99.sysctl.conf
