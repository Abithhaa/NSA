#!/bin/bash

while true; do
    echo "Menu:"
    echo "a. Contents of /etc/passwd"
    echo "b. List of output of 'who'"
    echo "c. Present working directory"
    echo "d. Exit"

    read -p "Enter your choice: " choice

    case "$choice" in
        a) echo -e "\nContents of /etc/passwd:\n"
           cat /etc/passwd
           ;;
        b) echo -e "\nList of output of 'who':\n"
           who
           ;;
        c) echo -e "\nPresent working directory:\n"
           pwd
           ;;
        d) echo "Exiting program. Goodbye!"
           exit 0
           ;;
        *) echo "Invalid choice. Please try again."
           ;;
    esac
done
