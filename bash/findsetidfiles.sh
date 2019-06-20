#!/bin/bash


echo "Setuid files:"
echo "---------------------------"
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
echo "Task 1 Find Setgid files:"
echo "---------------------------"
find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 3
echo "---------------------------"
echo "Task 2 display the 10 largest files in the system, sorted by their sizes"
find /home/ -type f -exec ls -alh  --block-size=M {} \; | sort -hr -k5 | head -n 10 | awk '{print $5, $3, $9}'
