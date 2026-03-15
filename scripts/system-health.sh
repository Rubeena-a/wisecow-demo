#!/bin/bash

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEM=$(free -m | awk 'NR==2{printf "%.2f", $3 * 100.0 / $2}')
DISK=$(df / | awk 'END {print $5}')

echo "CPU Usage: $CPU%"
echo "Memory Usage: $MEM%"
echo "Disk Usage: $DISK"

CPU_INT=${CPU%.*}

if [ "$CPU_INT" -gt 80 ]; then
echo "ALERT: CPU usage is high!"
fi

MEM_INT=${MEM%.*}   
if [ "$MEM_INT" -gt 80 ]; then
echo "ALERT: Memory usage is high!"
fi

DISK_INT=${DISK%\%}
if [ "$DISK_INT" -gt 80 ]; then
echo "ALERT: Disk usage is high!"
fi

