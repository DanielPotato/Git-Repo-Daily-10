#!/bin/bash
read -p "Enter the first number: " num1

read -p "Enter the second number: " num2

result=$((num1 + num2))
echo "The result of adding $num1 and $num2 is: $result"


#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <number1> <number2>"
    exit 1
fi

num1=$1
num2=$2

if ! [[ $num1 =~ ^[+-]?[0-9]+([.][0-9]+)?$ && $num2 =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]]; then
    echo "Invalid input. Both arguments must be valid numbers."
    exit 1
fi

result=$(bc <<< "scale=2; $num1 / $num2")
echo "Division result: $result"




num1=$1
num2=$2
operator=$3
case "$operator" in
    "+")
        result=$(bc <<< "$num1 + $num2")
        ;;
    "-")
        result=$(bc <<< "$num1 - $num2")
        ;;
    "*")
        result=$(bc <<< "$num1 * $num2")
        ;;
    "/")
        if [ "$num2" = "0" ]; then
            echo "Division by zero is not allowed."
            exit 1
        fi
        result=$(bc <<< "scale=2; $num1 / $num2")
        ;;
    *)
        echo "Invalid operator. Supported operators are +, -, *, and /."
        exit 1
        ;;
esac

echo "Result: $result"



if [ $# -ne 1 ]; then
    echo "error"
else
    echo "Great, just one"
fi

if [ $# -ne 2 ]; then
    echo "error"
else
    echo "Great, only two"
fi


arg_count=$#

if [ "$arg_count" -ge 2 ] && [ "$arg_count" -le 4 ]; then
    echo "Great"
else
    echo "error"
fi


arg=$1

if [ "$arg" -lt 10 ]; then
    echo "You have entered the correct argument."
else
    echo "False"
fi

read -p "Please enter your age: " age

if [ "$age" -gt 18 ]; then
    echo "You are legally allowed in."
else
    echo "You are not allowed."
fi



read -s -p "Please enter the password: " password
echo

if [ "$password" = "123" ]; then
    echo "Verified"
else
    echo "Denied"
fi


read -p "Please enter the first number: " num1
read -p "Please enter the second number: " num2

if [ "$num1" -eq "$num2" ]; then
    echo "equal"
else
    echo "not equal"
fi

read -p "Enter the name of a file or directory: " name

if [ -e "$name" ]; then
    if [ -f "$name" ]; then
        echo "Great"
    else
        echo "not regular"
    fi
else
    echo "File or directory not found."
fi







read -p "Enter the name of a file or directory: " name

if [ -e "$name" ]; then
    if [ -d "$name" ]; then
        echo "Awesome"
    else
        echo "not directory"
    fi
else
    echo "File or directory not found."
fi



read -p "Enter the name of a file or directory: " name

if [ -e "$name" ]; then
    if [ -x "$name" ]; then
        echo "wow"
    else
        echo "not executable"
    fi
else
    echo "File or directory not found."
fi


































