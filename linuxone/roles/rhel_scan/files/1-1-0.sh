#!/usr/bin/bash

if [[ $(grep -c -e "^server 10.10.10.10 iburst$" /etc/chrony.conf) -eq 1 && $(grep -c -e "^server 10.10.10.11 iburst$" /etc/chrony.conf) -eq 1 ]]; then
    exit 0
else
    exit 1
fi
