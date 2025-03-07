#!/bin/bash

# This script will display the server statistics

echo "OS Version : $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)"

echo "Uptime : $(uptime)"

echo "Total CPU Usage: $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')%"

echo "Total Memory Usage: $(free | grep Mem | awk '{print $3/$2 * 100.0}')%"

echo "Total Disk Usage: $(df -h / | grep / | awk '{print $5}')"

echo "Top 5 process by CPU Usage: $(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6)"

echo "Top 5 process by Memory Usage: $(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6)"

echo "Load Average: $(uptime | awk -F'average:' '{ print $2 }')"

echo "Logged In Users: $(who | wc -l)"

echo "Failed Login Attempts: $(cat /var/log/auth.log | grep 'Failed password' | wc -l)"