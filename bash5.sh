#!/bin/bash


args=$#

if [[ $args -gt 5 ]]; then
echo "Too many"
elif [[ $args -ge 3 ]]; then
echo "Nice"
elif [[ $args -gt 0 ]]; then
echo "Not enough"
else
echo "Sloppy"
fi
