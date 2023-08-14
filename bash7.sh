#!/bin/bash
read -p "Enter the first number: " num1

read -p "Enter the second number: " num2
result=$((num1 - num2))
echo "The result of subtracting $num2 from $num1 is: $result"

echo "Shell Scripting is Fun!"

message="Shell Scripting is Fun!"
echo $message


hostname=$(hostname)
echo "This script is running on $hostname."



file_path="your_file_path_here"

if [ -e "$file_path" ]; then
    echo "$file_path passwords are enabled."
    
    if [ -w "$file_path" ]; then
        echo "You have permissions to edit $file_path."
    else
        echo "You do NOT have permissions to edit $file_path."
    fi
else
    echo "$file_path does not exist."
fi









name=$1

if [ -e "$name" ]; then
    if [ -f "$name" ]; then
        echo "$name is a regular file."
        exit 0
    elif [ -d "$name" ]; then
        echo "$name is a directory."
        exit 1
    else
        echo "$name is another type of file."
        exit 2
    fi
else
    echo "$name does not exist."
    exit 2
fi
