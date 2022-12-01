#!/bin/bash
clear
echo "unziping..."
echo
sleep 1

unzip -P hackthebox misDIRection.zip &> /dev/null

echo "Finding files and extracting names"
echo
sleep 1

text=$(find .secret -type f | sort -k 1.11 -n | awk -F "/" '{ print $2 }')

echo "Sorting..."
echo
sleep 1

final=""

for letter in $text; do
        final+="$letter"
done

echo "Cleaning remaining files"
echo
rm -rf .secret
sleep 1
echo "Decoding..."
echo
sleep 1

echo "Your flag:"
echo
sleep 1

echo $final | base64 --decode



