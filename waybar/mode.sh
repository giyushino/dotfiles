#!/bin/bash

#last_word=$(asusctl profile -p | tail -n +2 | awk '{print $nf}' | tr '[:upper:]' '[:lower:]')
#echo "$last_word"

last_word=$(asusctl profile -p 2>&1 | grep -F 'Active profile' | awk '{print tolower($NF)}')
echo $last_word

