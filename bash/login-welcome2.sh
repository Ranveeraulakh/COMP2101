#!/bin/bash

titles=("Professor" "Operator" "Programmer" "Boss" "Grunt" "Final Boss" "Network Admin" )
num=$(( ${#titles[@]} ))
ran=$(( RANDOM % num ))
###############
# Variables   #
###############
hostname=$(hostname)
date=$(date +'%I:%M %p')
weekday=$(date +%u)
###############
# Main        #
###############
#cat <<EOF
cowsay "Welcome to planet $hostname, "${titles[$ran]} $USER!""
if [ "$weekday" = "6" ] || [ "$weekday" = "7" ]
then
   echo "It is $date on Weekend."
else
   echo "It is $date on Weekday."
fi
