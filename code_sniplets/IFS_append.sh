#! /bin/bash

echo "enter file to Append"
read file1

if [ -f $file1 ]; then
    while IFS= read -r line
    do
        echo $line
    done < $file1
    
else
    echo "file $file1 does not exit"
    
fi
