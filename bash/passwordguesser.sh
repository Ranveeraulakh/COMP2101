#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

#myString="TestString"
referenceString="password"
read -s -p "Guess the password:" myString
echo
if [ $myString = $referenceString ]; then
  echo "You guessed the password!"
else
  read -s -p "Guess the password:" myString
  echo "The password eludes you..."
  if [ $myString = $referenceString ]; then
    echo "You guessed the password!"
    else
    read -s -p "Guess the password:" myString
  fi
fi
