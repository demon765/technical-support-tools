#!/bin/bash
# Usage: ./log_analyzer.sh dummy_server.log

LOG_FILE=$1

if [ -z "$LOG_FILE" ]; then
    echo "Error: No log file provided."
    exit 1
fi

echo "Analyzing $LOG_FILE..."
echo "---------------------------------"
# Count specific error codes
echo "500 Errors: $(grep -c " 500 " "$LOG_FILE")"
echo "404 Errors: $(grep -c " 404 " "$LOG_FILE")"
echo "---------------------------------"
