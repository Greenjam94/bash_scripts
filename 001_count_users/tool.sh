#!/bin/bash

# ./tool.sh <data.csv filename> <user.txt filename>
if [ -z "$1" ]
  then
    echo "No argument supplied"
    echo "Usage: ./tool/sh <data.csv filename> <user.txt filename>"
  exit
fi

echo "[-] Processing csv with users file"
while read -r line; do echo -n $line  && grep -w $line $1 | wc -l | tr -s [:space:]; done < $2 > output.txt

echo "[-] Creating CSV from output.txt: value,count"
tr -s '[:blank:]' ',' < output.txt > output2.csv
rm output.txt

echo "[-] Sorting by highest count"
sort -nr -t , -k2 output2.csv > output3.csv
rm output2.csv

echo "[+] Showing top 5"
head -n 5 output3.csv
