#!/bin/bash
TARGET="google.com"
LOG_FILE="latency.log"

echo "Monitoring $TARGET..."

# Ping once and extract time
PING_TIME=$(ping -c 1 $TARGET | grep 'time=' | awk -F 'time=' '{print $2}' | cut -d. -f1)

if [ -z "$PING_TIME" ]; then
    echo "$(date): TIMEOUT" >> $LOG_FILE
elif [ "$PING_TIME" -gt 100 ]; then
    echo "$(date): HIGH LATENCY ${PING_TIME}ms" >> $LOG_FILE
else
    echo "Latency normal: ${PING_TIME}ms"
fi
