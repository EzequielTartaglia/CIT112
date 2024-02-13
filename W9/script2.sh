#!/bin/bash


# nano script2.sh
# Ctrl + 0 
# chmod 777 script2.sh
# bash ./script2.sh

#
# You will create a bash script which performs the following tasks:
#
# Define variables for your favorite food and dessert
# Display your favorite food and desert
# Display the current date
# Display the calendar of the current month
# When it is run, the output should look similar to the one shown below:
# 
#  
# 
# My favorite food is tacos
# 
# My favorite dessert is chocolate chip cookies
# 
# Today's data is Wed 28 Apr 2021 01:25:55 PM MDT
# 
# Here is the calendar of this month
# 
#      April 2021      
# Su Mo Tu We Th Fr Sa 
#              1  2  3 
#  4  5  6  7  8  9 10 
# 11 12 13 14 15 16 17 
# 18 19 20 21 22 23 24 
# 25 26 27 28 29 30
#

# Define variables for favorite food and dessert
favorite_food="tacos"
favorite_dessert="chocolate chip cookies"

# Display favorite food and dessert
echo "My favorite food is $favorite_food"
echo "My favorite dessert is $favorite_dessert"

# Display current date
echo "Today's date is $(date)"

# Display calendar of the current month
echo "Here is the calendar of this month"
cal