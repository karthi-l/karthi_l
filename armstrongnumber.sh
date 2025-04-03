#!/bin/bash

# Function to check Armstrong number
is_armstrong() {
  num=$1
  sum=0
  original_num=$num
  
  # Get the number of digits
  num_digits=${#num}
  
  # Calculate the sum of the digits raised to the power of the number of digits
  while [ $num -gt 0 ]
  do
    digit=$((num % 10))  # Get the last digit
    sum=$((sum + digit**num_digits))  # Add the power of the digit to the sum
    num=$((num / 10))  # Remove the last digit from the number
  done
  
  # Check if the sum is equal to the original number
  if [ $sum -eq $original_num ]; then
    echo "$original_num is an Armstrong number"
  else
    echo "$original_num is not an Armstrong number"
  fi
}

# Read the number from the user
echo "Enter a number:"
read number

# Call the function
is_armstrong $number

