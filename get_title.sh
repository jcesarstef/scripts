#!/bin/bash
for i in $(cat $1);do
title=$(curl -sL $i | grep -o "<title>[^<]*" | cut -d'>' -f2-|tr "\'" " "|tr "\"" " ")
echo "$i - $title"
done
