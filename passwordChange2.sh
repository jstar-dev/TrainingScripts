#!/bin/bash
while IFS= read -r line || [[ -n $line ]]; do 
    echo "$line"
	sed -i -e "s/$1/$2/g" "$line"
done <	listOfFiles.txt
