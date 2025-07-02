#!/bin/bash

echo "===== SERVER STATS ====="

echo ""
echo "--- CPU Usage ---"
vmstat | tail -1 | awk '{print "CPU Usage: " 100 - $15 "%"}'

echo ""
echo "--- Memory Usage ---"
vmstat -s | awk '
    /total memory/ {total=$1}
    /free memory/ {free=$1}
    /used memory/ {used=$1}
    END {
    printf "Memory Usage: %0.2f MB %.2f%%\n", used/1024, (used / total) * 100
    printf "Free Memory: %0.2f MB %.2f%%\n", free/1024, (free / total) * 100
    }'

echo ""
echo "--- Disk Usage ---"
df | awk '$NF=="/" {
    printf "Disk Used: %0.2f G (%s)\n", $3/1000000, $5
    printf "Disk Free: %0.2f G (%0.2f%%)\n", $4/1000000, ($4/$2)*100
    printf "Filesystem: %s\n", $1
}'

echo ""
echo "--- Top 5 CPU-hungry Processes ---"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 | tail -n 5 | awk '{printf "PID: %s, Command: %s, CPU: %s%%\n", $1, $2, $3}'

echo ""
echo "--- Top 5 Memory-hungry Processes ---"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6 | tail -n 5 | awk '{printf "PID: %s, Command: %s, Memory: %s%%\n", $1, $2, $3}'
