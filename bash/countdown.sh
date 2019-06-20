#!/bin/bash

# This script demonstrates how to trap signals and handle them using functions

# Task: Add traps for the INT and QUIT signals. If the script receives an INT signal,
#       resetfunction the count to the maximum and tell the user they are not allowed to interrupt
#       the count. If the script receives a QUIT signal, tell the user they found the secret
#       to getting out of the script and exit immediately.
trap resetfunction SIGINT
trap FSfunction SIGQUIT
SCname="$(basename $0)"
programName=1
totalsleeps=10

function error-message {
        echo "${SCname}: ${1:-Unknown Error - a moose bit my sister once...}" >&2
}

function error-exit {
        error-message "$1"
        exit "${2:-1}"
}
function usage {
        cat <<EOF
Usage: ${SCname} [-h|--help ] [-w|--waittime waittime] [-n|--waitcount waitcount]
Default waittime is 1, waitcount is 10
EOF
}

#### Main Program

# Process command line parameters
while [ $# -gt 0 ]; do
    case $1 in
        -w | --waittime )
            shift
            sleepTime="$1"
            ;;
        -n | --waitcount)
            shift
            totalsleeps="$1"
            ;;
        -h | --help )
            usage
            exit
            ;;
        * )
            usage
            error-exit "$1 not a recognized option"
    esac
    shift
done

if [ ! $totalsleeps -gt 0 ]; then
    error-exit "$totalsleeps is not a valid count of sleeps to wait for signals"
fi

if [ ! $sleepTime -gt 0 ]; then
    error-exit "$sleepTime is not valid time."
fi
sleepCount=$totalsleeps
while [ $sleepCount -gt 0 ]; do
    echo "Waiting $sleepCount more times for signals"
    sleep $sleepTime
    sleepCount=$((sleepCount - 1))
done
echo "Wait counter finished, exiting script"
function FSfunction {
  echo "you found out the way to end."
  exit
}
function resetfunction {
  echo "you are not allowed to interrupt."
  sleepCount=$(($totalsleeps+1))
}
