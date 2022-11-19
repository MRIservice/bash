#! /bin/bash
# This code will find matching lines in a file and 
# print words in on those lines in the specified positions

echo "enter file to print from awk"
read filename

if [ -f $filename ]; then
    
    awk '/Windows/{print $2 " " $3}' $filename
    
else
    
    echo "fart file not found"
