#! /bin/bash

echo "enter file to search"
read filename

if [ -f $filename ]; then
    
    echo "file $filename exists"
    
    echo "Enter the text to search for"
    read searchtext
    
    grep -in $searchtext $filename
    
else
    echo "$filename does not exist"
fi
