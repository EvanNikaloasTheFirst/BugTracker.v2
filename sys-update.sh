#!/bin/bash

CRON_SCHEDULE="* * * * *" # TODO: Set to what schedule is wanted

# Update the package list
echo "Updating package list..."
sudo apt update

# Upgrade the installed packages
echo "Upgrading installed packages..."
sudo apt upgrade -y

# Optionally, perform a distribution upgrade
echo "Performing distribution upgrade..."
sudo apt dist-upgrade -y

# Clean up unused packages
echo "Cleaning up..."
sudo apt autoremove -y

echo "System update and upgrade complete."

# Create cron job
echo "Creating cron job..."
(crontab -l 2 > /dev/null; echo "$CRON_SCHEDULE ./sys-update.sh") | crontab -

# Reboot System
echo "Rebooting System..."
reboot
