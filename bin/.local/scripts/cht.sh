#!/usr/bin/env bash

languages=$(echo "golang java c cpp python javascript typescript rust html css sass" | tr " " "\n")
core_utils=$(echo "find xargs awk sed grep vim mkdir tmux git" | tr " " "\n")
selected=$(echo "$languages\n$core_utils" | fzf)

read -p "Enter search query: " query

if echo "$languages" | grep -q "$selected"; then
    tmux split-window -l 40 -h bash -c "curl -s cht.sh/$selected/$(echo $query | tr " " "+") | less"
else
    tmux split-window -l 40 -h bash -c "curl -s cht.sh/$selected~$query | less"
fi

