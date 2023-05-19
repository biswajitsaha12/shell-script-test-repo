#Replace all the occurrences of '.' to '/' in the first 5 lines of a file. 
#Sample file contents: https://randomwordgenerator.com/paragraph.php can use this tool to generate text files
#!/bin/bash

read -p "Enter filename: " filename

if [ ! -f $filename ]
then echo "not a valid filename!"
exit 1
fi

sed -i '' '1,5 s/\./\//g' "$filename"