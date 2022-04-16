#!/usr/bin/bash

if [[ $(grep -c -e "^nameserver 172.83.4.63$" /etc/resolv.conf) -eq 1 && $(grep -c -e "^nameserver 8.8.8.8$" /etc/resolv.conf) -eq 1 && $(grep -c -e "^search cloud.test123.com$" /etc/resolv.conf) -eq 1 ]]; then
    exit 0
else
    exit 1
fi
