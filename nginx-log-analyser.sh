#!/bin/bash

echo "Top 5 IP adresses with the most requests:"

awk '{print $1}' nginx-access.log | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'

echo -e "\nTop 5 most requested paths:"

awk '{print $7}' nginx-access.log | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'
echo -e "\nTop 5 response status codes:"

awk '{print $9}' nginx-access.log | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'
echo -e  "\nTop 5 user agents:"

awk '{print $12}' nginx-access.log | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'
