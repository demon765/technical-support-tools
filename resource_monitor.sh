#!/bin/bash
# Description: alerts if Disk usage is > 80% or RAM is > 90%.
# Usage: ./resource_monitor.sh

# Thresholds
DISK_THRESHOLD=80
RAM_THRESHOLD=90

# Check Disk Usage (Root partition)
DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$DISK_USAGE" -gt "$DISK_THRESHOLD" ]; then
    echo "CRITICAL: Disk usage is at ${DISK_USAGE}%!"
else
    echo "OK: Disk usage is at ${DISK_USAGE}%."
fi

# Check RAM Usage
# Uses 'free' command, extracting the used percentage
TOTAL_RAM=$(free | grep Mem | awk '{print $2}')
USED_RAM=$(free | grep Mem | awk '{print $3}')
RAM_PERCENT=$(( 100 * USED_RAM / TOTAL_RAM ))

if [ "$RAM_PERCENT" -gt "$RAM_THRESHOLD" ]; then
    echo "CRITICAL: RAM usage is at ${RAM_PERCENT}%!"
else
    echo "OK: RAM usage is at ${RAM_PERCENT}%."
fi
