#!/bin/bash

file="motivationalQuotes.txt"
numberOfQuotes=$(wc -l < "$file")
randomLine=$((1+RANDOM % numberOfQuotes))
quote=$(sed -n "${randomLine}p" "$file")
echo "Quote of the day is: " "$quote"
read -p "Do you want to add another motivational quote in the list? (yes/no): " answer

if [[ "$answer" == "yes"  ]]; then
read -p "Enter the new quote, please: " newQuote
echo "$newQuote" >> "$file"
fi
