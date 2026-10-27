#!/bin/bash

disk_usage=$(df -hT | grep -v Filesystem)
usage_threshold=20
while IFS= read -r line
do

    usage=$(echo "$line" | awk '{print $6}' | cut -d "%" -f1)
    partition=$(echo "$line" | awk '{print $6}')

    if [ "$usage" -ge "$usage_threshold" ]; then

        message+="Disk Usage threshold exceeded:$usage :$partition \n"
    fi

done <<< "$disk_usage"

echo "$message"