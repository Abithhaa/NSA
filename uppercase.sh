#!/bin/bash


if [ $# -ne 1 ]; then
    echo "Usage: $0 <input.txt>"
    exit 1
fi


if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found."
    exit 1
fi


while IFS= read -r line; do
    echo "$line" | tr '[:lower:]' '[:upper:]'
done < "$1"

echo "Contents of $1 displayed in uppercase."
