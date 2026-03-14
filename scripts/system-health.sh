#!/bin/bash

CPU=$(top -bn1 | grep "Cpu" | awk '{print $2}')
MEM=$(free | awk '/Mem/ {print $3/$2 * 100.0}')
DISK=$(df / | awk 'END {print $5}')

echo "CPU Usage: $CPU%"
echo "Memory Usage: $MEM%"
echo "Disk Usage: $DISK"

if [ ${CPU%.*} -gt 80 ]; then
echo "ALERT: CPU usage is high!"
fi

