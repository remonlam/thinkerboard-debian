#!/bin/bash

# Asus Thinkerboard post configuration;

## Update system;
apt-get update
apt-get upgrade -y

## Disable swap space;

### Disable swap;
swapoff -a

### Disable swap partition;
sed -i '/swap/s/^/#/g' /etc/fstab

### Remove old swap file;
rm -rf /var/swap







# Reboot node;
#reboot
