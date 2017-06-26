#!/bin/bash
# a brazilian "gambiarra" to automate search for vulnerable dependencies (run both with bundler-audit)
# use example:
# versioneye_search.sh ./project/Gemfile.lock
for i in $(cat $1 | sed "s/^[ \t]*//" | grep "(.*)" | grep -o "^[a-zA-Z0-9_.]*.*" | cut -d "," -f 1 | tr -d "(|>|~|)|=" | sed -e 's/  */\//g'|sort|uniq); do

echo "\n$i"
curl -sL https://www.versioneye.com/ruby/$i | grep -iE 'Security Vulnerabilities|<h2>|<span class="label_bold">|target="LINK">|<span class="label_bold">Published</span>'|sed 's/<[^>]*>//g'
echo "========="
done
