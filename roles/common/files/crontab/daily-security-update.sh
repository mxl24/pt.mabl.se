#!/bin/bash

echo "$(date +'%Y%m%dT%H:%M:%S') Running 'yum update --security -y'..."
yum update --security -y

# Write about system reboot required!
if [ -f /var/run/reboot-required ]; then
    echo "$(date +'%Y%m%dT%H:%M:%S') Reboot required, call @mblomdahl to schedule a restart."
fi
