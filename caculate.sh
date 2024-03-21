#!/bin/bash

calculate_grade() {
    if [ $1 -ge 80 ] && [ $1 -le 100 ]; then
        grade="A"
    elif [ $1 -ge 70 ] && [ $1 -le 79 ]; then
        grade="B"
    elif [ $1 -ge 60 ] && [ $1 -le 69 ]; then
        grade="C"
    else
        grade="D (Failed)"
    fi
}

calculate_percentage() {
    total=$(( $1 + $2 + $3 ))
    percentage=$(( $total / 3 ))
}

read -p "Enter the number of students: " num_students

for (( i=1; i<=$num_students; i++ )); do
    echo "Enter details for student $i:"
    read -p "Roll number: " roll_no
    read -p "Name: " name
    read -p "Marks for subject 1: " marks1
    read -p "Marks for subject 2: " marks2
    read -p "Marks for subject 3: " marks3

    calculate_percentage $marks1 $marks2 $marks3
    calculate_grade $percentage

    echo "Roll Number: $roll_no"
    echo "Name: $name"
    echo "Percentage: $percentage%"
    echo "Grade: $grade"
    echo
done
