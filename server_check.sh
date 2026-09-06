#!/bin/bash

echo "======================================"
echo "      CLOUD SERVER HEALTH CHECK"
echo "======================================"

echo ""
echo "1. HOST INFORMATION"
echo "--------------------------------------"
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "Date: $(date)"

echo ""
echo "2. IP INFORMATION"
echo "--------------------------------------"
hostname -I

echo ""
echo "3. ROUTING"
echo "--------------------------------------"
ip route

echo ""
echo "4. DISK USAGE"
echo "--------------------------------------"
df -h

echo ""
echo "5. MEMORY"
echo "--------------------------------------"
free -h

echo ""
echo "6. CPU / LOAD"
echo "--------------------------------------"
uptime

echo ""
echo "7. SSH SERVICE"
echo "--------------------------------------"

if systemctl is-active --quiet ssh; then
    echo "SSH Status: RUNNING"
else
    echo "SSH Status: NOT RUNNING"
fi

echo ""
echo "8. LISTENING PORTS"
echo "--------------------------------------"
ss -tuln
echo ""
echo "9. INTERNET CONNECTIVITY"
echo "--------------------------------------"
ping -c 3 8.8.8.8

echo ""
echo "10. DNS TEST"
echo "--------------------------------------"
nslookup google.com

echo ""
echo "======================================"
echo "       HEALTH CHECK COMPLETE"
echo "======================================"

echo ""
ech0 "Diagonstic performed successfully."
echo ""

echo "11. DIAGNOSTIC STATUS"
echo "---------------------"
echo "Server diagnostic completed successfully."

echo ""
echo "Server diagnostic report generated successfully."
echo "Hostname: $(hostname)"
echo "IP Address: $(hostname -I | awk '{print $1}')"
echo "Date: $(date)"

echo "Diagnostic version: 2.0.0"

echo "Day 20 feature change"

echo "Day 21 selected feature"

echo "Day 25 detached HEAD experiment"

echo "Main branch update before merge"

echo "Day 26 merge feature - step 1"

echo "Day 26 merge feature - step 2"

echo "Day 27 commit 1"

echo "Day 27 commit 2"
