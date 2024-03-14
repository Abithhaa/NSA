#!/bin/bash

# Function to calculate grade based on marks
calculate_grade() {
    marks=$1
    if [ $marks -ge 90 ]; then
        echo "Grade: A"
    elif [ $marks -ge 80 ]; then
        echo "Grade: B"
    elif [ $marks -ge 70 ]; then
        echo "Grade: C"
    elif [ $marks -ge 60 ]; then
        echo "Grade: D"
    else
        echo "Grade: F"
    fi
}

# Input marks for different subjects
echo "Enter marks for subject 1:"
read subject1
echo "Enter marks for subject 2:"
read subject2
echo "Enter marks for subject 3:"
read subject3

# Calculate total marks
total_marks=$((subject1 + subject2 + subject3))

echo "Total Marks: $total_marks"

# Calculate and display grade
calculate_grade $total_marks
