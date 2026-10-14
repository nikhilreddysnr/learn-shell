#!/bin/bash

START_TIME=$(date +%s)
echo "Script execution started at $START_TIME"

sleep 10
END_TIME=$(date +%s)

echo "Script execution ended at $END_TIME"

TOTAL_TIME=$((END_TIME - START_TIME))
echo "Total execution time: $TOTAL_TIME seconds"
