#!/bin/bash

# Define the directory to search
dir="/"

# Define the output file
outputfile="$HOME/myfile.txt"

# Run the find command to list directories two levels deep and output the results to the file
#find $dir -mindepth 2 -maxdepth 2 -type d > "$outfile"

# Loop through the directories two levels deep and output the results to the file
for d in "$dir"/*/*/; do
    if [ -d "$d" ]; then
        echo "$d" >> "$outputfile"
    fi
done

echo "output written to file: " "$outputfile"