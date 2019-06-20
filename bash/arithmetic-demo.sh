#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number
read -p "Input1? " no1
read -p "Input2? " no2
sum=$((no1 + no2))
sub=$((no1 - no2))
dividend=$((no1 / no2))
multiply=$((no1 * no2))
remainder=$((no1 % no2))
power=$((no1^no2))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $no1/$no2}")
cat <<EOF
$no1 plus $no2 is $sum
$no1 divided by $no2 gives $dividend with reminder of $remainder
  - More precisely, dividend is $fpdividend
$no1 multiply by $no2 is $multiply
$no1 subtracting by $no2 is $sub
Displaying the $no1  raised to the power of the $no2  is $power
EOF
