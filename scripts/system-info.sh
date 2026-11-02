
#!/usr/bin/env bash

set -euo pipefail

echo "=================================="
echo "       LINUX SYSTEM REPORT"
echo "=================================="

echo ""
echo "HOSTNAME:"
hostname

echo ""
echo "OPERATING SYSTEM:"
cat /etc/os-release | grep PRETTY_NAME

echo ""
echo "KERNEL VERSION:"
uname -r

echo ""
echo "CPU INFORMATION:"
lscpu | grep -E 'Model name|CPU\(s\)'

echo ""
echo "MEMORY USAGE:"
free -h

echo ""
echo "DISK USAGE:"
df -h

echo ""
echo "SYSTEM UPTIME:"
uptime -p

echo ""
echo "IP ADDRESS:"
hostname -I

echo "=================================="
echo "       REPORT COMPLETED"
echo "=================================="
