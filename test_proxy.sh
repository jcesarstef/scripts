#!/bin/bash
#Created by @jcesarstef
#Script to test publics proxy's servers


myip=$(curl -sL ifconfig.co)
for i in $(wget -q https://free-proxy-list.net/ -O /tmp/a.txt ; cat /tmp/a.txt | grep "<tr><td>" | tr -d "/" | awk 'BEGIN { FS = "<td>" } ; { print $2 ":" $4 }'|sort -R); do
output=$(timeout 10 curl -sL ifconfig.co -x $i | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")

echo "Proxy $i - IP: $output" | grep -vE "IP: $|$myip"

done
rm /tmp/a.txt
