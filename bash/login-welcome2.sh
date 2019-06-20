#!/bin/bash

titles=("Load" "Tech" "Scripter" "Hacker" "GOD" "Smugglar" "Geek" )
num=$(( ${#titles[@]} ))
ran=$(( RANDOM % num ))
hostname=$(hostname)
date=$(date +'%I:%M %p')
weekday=$(date +%u)
cowsay "Welcome to planet $hostname, "${titles[$ran]} $USER!""
if [ "$weekday" = "6" ] || [ "$weekday" = "7" ]
then
   echo "It is $date on Weekend."
else
   echo "It is $date on Weekday."
fi
