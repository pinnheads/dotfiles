#!/bin/bash

# Get container names as a list
containers_list=$(docker ps --format "{{.Names}}")

# Count the number of containers (based on line count)
count=$(echo "$containers_list" | grep -c '^')

# Escape newlines for JSON tooltip
tooltip=$(echo "$containers_list" | sed ':a;N;$!ba;s/\n/\\n/g')

# Output valid JSON
echo "{\"text\": \" $count\", \"tooltip\": \"$tooltip\"}"
