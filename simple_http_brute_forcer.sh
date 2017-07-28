#!/bin/bash
echo "Use: sh simple_http_brute_forcer.sh "domain" "wordlist.txt"
for i in $(cat $2); do echo -n "$i "; curl -s -I $1/$i | head -1 ; done
