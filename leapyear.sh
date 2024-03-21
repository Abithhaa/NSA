#!/bin/bash

is_leap_year() {
    year=$1
    
    if (( year % 4 == 0 && ( year % 100 != 0 || year % 400 == 0 ) )); then
        echo "$year is a leap year."
    else
        echo "$year is not a leap year."
    fi
}

if [ $# -eq 0 ]; then
    current_year=$(date +'%Y')
    is_leap_year $current_year
    exit 0
fi

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please provide a valid year as an argument."
    exit 1
fi

is_leap_year $1
