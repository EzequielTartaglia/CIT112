#!/bin/bash

#
# You will create a bash script which performs the following tasks:
# 
# Define stub functions, multiply and divide
# Define global variables, int1, int2, and result
# Perform the multiplication and assign the product to result. Print the result.
# Perform the division and assign the quotient to result. Print the result.
# When it is run, the output should look similar to the one shown below:
# 
# DEBUG: multiply ()
# 
# 14 * 7 = 98
# 
# DEBUG: divide ()
# 
# 14 / 7 = 2
# 

# Define stub functions multiply and divide
multiply() {
    echo "DEBUG: multiply ()"
    result=$((int1 * int2))
    echo "$int1 * $int2 = $result"
}

divide() {
    echo "DEBUG: divide ()"
    result=$((int1 / int2))
    echo "$int1 / $int2 = $result"
}

# Define global variables
int1=14
int2=7
result=0

# Perform multiplication and print the result
multiply

# Perform division and print the result
divide