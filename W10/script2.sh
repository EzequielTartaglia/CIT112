#!/bin/bash

# nano script2.sh
# Ctrl + 0 
# chmod 777 script2.sh
# bash ./script2.sh

# 
# Create a BASH script called script2.sh which takes in a directory name and a file name as command arguments.  The script consists of two logical parts.  Part 1) If the specified directory does NOT exist, prompt the user if the directory should be created.  If "No", end the script.  If "Yes", create the specified directory.  Part 2) If the specified directory already exists, verify that the specified file exists in the specified directory.  If the file does not exist, prompt the user if the file should be created under the specified directory.  If "No", print the long listing of the files in the specified directory and end the script.  If "Yes", create the file under the specified directory, print the long listing of the files in the specified directory, and end the script. 
# 
# Your script output should look similar to the one below:
# 
# okuda@okuda:~/Day10$ . ./script2.sh DirA fileA
# DirA directory does not exist. Do you want to create it (Y/N)?n
# okuda@okuda:~/Day10$ . ./script2.sh DirA fileA
# DirA directory does not exist. Do you want to create it (Y/N)?y
# Creating DirA directory.
# fileA file does not exist in DirA directory.  Do you want to create it (Y/N)?n
# Here is the list of files in DirA directory:
# total 0
# okuda@okuda:~/Day10$ . ./script2.sh DirA fileA
# DirA directory exists.
# fileA file does not exist in DirA directory.  Do you want to create it (Y/N)?y
# Creating fileA file in DirA directory.
# Here is the list of files in DirA directory:
# total 0
# -rw-rw-r-- 1 okuda okuda 0 Apr 28 15:06 fileA
# okuda@okuda:~/Day10$ . ./script2.sh DirA fileB
# DirA directory exists.
# fileB file does not exist in DirA directory.  Do you want to create it (Y/N)?y
# Creating fileB file in DirA directory.
# Here is the list of files in DirA directory:
# total 0
# -rw-rw-r-- 1 okuda okuda 0 Apr 28 15:06 fileA
# -rw-rw-r-- 1 okuda okuda 0 Apr 28 15:06 fileB
# okuda@okuda:~/Day10$ 
#

# Check if the number of arguments provided is correct
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <Directory> <File>"
    exit 1
fi

# Store the provided directory and file arguments
directory=$1
file=$2

# Check if the specified directory exists
if [ ! -d "$directory" ]; then
    read -p "$directory directory does not exist. Do you want to create it (Y/N)? " choice
    if [ "$choice" != "Y" ] && [ "$choice" != "y" ]; then
        echo "Exiting script."
        exit 0
    fi
    mkdir -p "$directory"
    echo "Creating $directory directory."
fi

# Check if the specified file exists in the specified directory
if [ ! -f "$directory/$file" ]; then
    read -p "$file file does not exist in $directory directory. Do you want to create it (Y/N)? " choice
    if [ "$choice" != "Y" ] && [ "$choice" != "y" ]; then
        ls -l "$directory"
        echo "Exiting script."
        exit 0
    fi
    touch "$directory/$file"
    echo "Creating $file file in $directory directory."
fi

# Print the long listing of the files in the specified directory
ls -l "$directory"


