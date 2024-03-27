#!/bin/bash

# nano script1.sh
# Ctrl + 0 
# chmod 777 script1.sh
# bash ./script1.sh

#
# Create a BASH script called script1.sh which takes in the name of a month (e.g. Jan, Feb, Mar, …) and a day (e.g. 1, 2, 3, …) as command arguments.  Display whether the month is an odd (e.g. Jan, Mar, …) or even (e.g. Feb, Apr, …) month as well as whether the day is an odd or even day.  Your input and output should look similar to the one below:
# 
# okuda@okuda:~/Day10$ . ./script1.sh Jan 1
# Jan is an odd month
# 1 is an odd day
# okuda@okuda:~/Day10$ . ./script1.sh Feb 2
# Feb is an even month
# 2 is an even day
# okuda@okuda:~/Day10$ . ./script1.sh May 4
# May is an odd month
# 4 is an even day
#


# Check if the number of arguments provided is correct
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <Month> <Day>"
    exit 1
fi


# Assign variables to month and day
month=$1
day=$2

# Determine month type (odd or even)
case $month in
    Jan | Mar | May | Jul | Sep | Nov)
        month_type="odd"
        ;;
    *)
        month_type="even"
        ;;
esac

# Conditional to see if the month is odd or even
if (( day % 2 == 0 )); then
    day_type="even"
else
    day_type="odd"
fi

# Display the result
echo "$month is an $month_type month"
echo "$day is an $day_type day"
