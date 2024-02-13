#!/bin/bash


# nano script3.sh
# Ctrl + 0 
# chmod 777 script3.sh
# bash ./script3.sh

#
# Create a BASH script called script3.sh which takes in a file name as a command argument.  The script consists of 6 logical parts. 
# 
# Part 1) Print the menu options as shown below and wait for the user response. 
# 
# Display the disk usage
# Display the memory usage
# Print the content of the specified file
# Exit
#  
# 
# Part 2) If option 1 is selected, execute “df -h” command. 
# 
# Part 3) If option 2 is selected, execute “free -h” command. 
# 
# Part 4) If option 3 is selected, print the content of the file as specified in the command argument.  Use “while read …  < filename” command, instead of “cat” command. 
# 
# Part 5) if option 4 is selected, end the script. 
# 
# Part 6) The whole script should be in a while true loop.
# 
#  
# 
# Your script output should look similar to the one below:
# 
# okuda@okuda:~/Day10$ . ./script3.sh /etc/hosts
# 
# 1. Display the disk usage
# 2. Display the memory usage
# 3. Print the content of /etc/hosts file
# 4. Exit
# 
# Choose your option [1-4]:1
# 
#               total        used        free      shared  buff/cache   available
# Mem:          3.8Gi       630Mi       1.8Gi       8.0Mi       1.4Gi       3.0Gi
# Swap:         1.1Gi          0B       1.1Gi
# 
# 1. Display the disk usage
# 2. Display the memory usage
# 3. Print the content of /etc/hosts file
# 4. Exit
# 
# Choose your option [1-4]:2
# 
# Filesystem      Size  Used Avail Use% Mounted on
# udev            1.9G     0  1.9G   0% /dev
# tmpfs           394M  1.4M  393M   1% /run
# /dev/sda5        24G  6.5G   17G  29% /
# tmpfs           2.0G     0  2.0G   0% /dev/shm
# tmpfs           5.0M  4.0K  5.0M   1% /run/lock
# tmpfs           2.0G     0  2.0G   0% /sys/fs/cgroup
# /dev/loop0       55M   55M     0 100% /snap/core18/1880
# /dev/loop2      219M  219M     0 100% /snap/gnome-3-34-1804/66
# /dev/loop3       52M   52M     0 100% /snap/snap-store/518
# /dev/loop1       66M   66M     0 100% /snap/gtk-common-themes/1515
# /dev/loop4       65M   65M     0 100% /snap/gtk-common-themes/1514
# /dev/loop5       56M   56M     0 100% /snap/core18/1997
# /dev/loop6      256M  256M     0 100% /snap/gnome-3-34-1804/36
# /dev/loop7       33M   33M     0 100% /snap/snapd/11588
# /dev/loop8       50M   50M     0 100% /snap/snap-store/467
# /dev/loop9       30M   30M     0 100% /snap/snapd/8542
# /dev/sda1       511M  4.0K  511M   1% /boot/efi
# tmpfs           394M   20K  394M   1% /run/user/1000
# /dev/sr0         59M   59M     0 100% /media/okuda/VBox_GAs_6.1.18
# 
# 1. Display the disk usage
# 2. Display the memory usage
# 3. Print the content of /etc/hosts file
# 4. Exit
# 
# Choose your option [1-4]:3
# 
# 
# 
# 127.0.0.1    localhost
# 127.0.1.1    okuda
# 
# # The following lines are desirable for IPv6 capable hosts
# ::1     ip6-localhost ip6-loopback
# fe00::0 ip6-localnet
# ff00::0 ip6-mcastprefix
# ff02::1 ip6-allnodes
# ff02::2 ip6-allrouters
# 
# 
# 1. Display the disk usage
# 2. Display the memory usage
# 3. Print the content of /etc/hosts file
# 4. Exit
# 
# Choose your option [1-4]:4
# 
# Bye!
# okuda@okuda:~/Day10$ 
#

while true; do
    echo "1. Display the disk usage"
    echo "2. Display the memory usage"
    echo "3. Print the content of $1 file"
    echo "4. Exit"
    
    read -p "Choose your option [1-4]: " option
    
    case $option in
        1)
            df -h
            ;;
        2)
            free -h
            ;;
        3)
            echo ""
            echo "Content of $1 file:"
            while IFS= read -r line; do
                echo "$line"
            done < "$1"
            ;;
        4)
            echo "Bye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please choose again."
            ;;
    esac
done
