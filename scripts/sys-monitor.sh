---

# 📜 `scripts/sys-monitor.sh`
```bash
#!/usr/bin/env bash  # Use bash shell

CPU_THRESHOLD=80     # Set CPU usage alert threshold to 80%
MEM_THRESHOLD=80     # Set memory usage alert threshold to 80%
DISK_THRESHOLD=80    # Set disk usage alert threshold to 80%

# Get CPU usage: parse output of 'top', extract idle %, subtract from 100 to get usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk -F',' '{print $1}' | sed 's/.*://; s/ us//' | awk '{print 100 - $1}')
CPU_USAGE_INT=${CPU_USAGE%.*}  # Convert CPU usage to integer (remove decimal part)

# Get memory usage: use 'free', calculate used/total memory percentage
MEM_USAGE=$(free | awk '/Mem/{printf("%.0f", $3/$2 * 100)}')

# Get disk usage: use 'df' for root partition, extract usage percentage
DISK_USAGE=$(df -h / | awk 'NR==2 {gsub("%","",$5); print $5}')

# Print current usage stats
echo "CPU: $CPU_USAGE_INT% | MEM: $MEM_USAGE% | DISK: $DISK_USAGE%"

ALERT=0  # Initialize alert flag

# Check if CPU usage exceeds threshold
if [ "$CPU_USAGE_INT" -ge "$CPU_THRESHOLD" ]; then
  echo "ALERT: CPU usage $CPU_USAGE_INT% >= $CPU_THRESHOLD%"
  ALERT=1
fi
# Check if memory usage exceeds threshold
if [ "$MEM_USAGE" -ge "$MEM_THRESHOLD" ]; then
  echo "ALERT: Memory usage $MEM_USAGE% >= $MEM_THRESHOLD%"
  ALERT=1
fi
# Check if disk usage exceeds threshold
if [ "$DISK_USAGE" -ge "$DISK_THRESHOLD" ]; then
  echo "ALERT: Disk usage $DISK_USAGE% >= $DISK_THRESHOLD%"
  ALERT=1
fi

# Log alert or OK status to /tmp/sys-monitor.log and set exit code
if [ "$ALERT" -eq 1 ]; then
  echo "$(date) - ALERT triggered" >> /tmp/sys-monitor.log
  exit 2
else
  echo "$(date) - all OK" >> /tmp/sys-monitor.log
  exit 0
fi
```
