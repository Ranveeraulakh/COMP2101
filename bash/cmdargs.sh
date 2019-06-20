#!/bin/bash
while [ $# -gt 0 ]; do
  echo "There are $# things left to process on the command line."
  echo "\$1 has $1 in it."
  case $1 in
    -h )
    echo 'You added "-h" for help. '
    ;;
    -v )
    echo 'You added "-v" for varbose. '
    ;;
    -d )
      case "$2" in
        [1-5] )
        echo "You added -d for debug level $2"
        shift
        ;;
        *)
        echo "The -d option must be followed with a number [1-5]. "
        shift
      esac
    ;;
    *)
    err=$1
    echo "Invalid value $err"
    ;;
    esac
  shift
  echo "Processed shift, Now $# arguments left."
  echo "--------------------------"
done
echo "No Arguments are given. Skipping the loop."
