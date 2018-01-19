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


## Install packages;
apt-get install -y net-tools wget nano htop iotop iftop nfs-common ntp git

## Remove packages;
apt-get remove -y command-not-found stress
unset command_not_found_handle

## NTP configuration;
### Add ntp servers to config files;
sed -i '$ a NTP=0.nl.pool.ntp.org 1.nl.pool.ntp.org 2.nl.pool.ntp.org 3.nl.pool.ntp.org' /etc/systemd/timesyncd.conf
sed -i 's/debian.pool.ntp.org/nl.pool.ntp.org/g' /etc/ntp.conf

## Set time zone;
timedatectl set-timezone Europe/Amsterdam


# Reboot node;
#reboot
