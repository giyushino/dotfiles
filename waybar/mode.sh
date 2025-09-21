#!/bin/bash

last_word=$(asusctl profile -p | tail -n +2 | awk '{print $NF}' | tr '[:upper:]' '[:lower:]')
echo "$last_word"
