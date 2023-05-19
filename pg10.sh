#Count the number of times a letter exists in a file, irrespective of the case of the letter. Both the file and the letter have to be taken in as input
#!/bin/bash

read -p "Enter filename: " filename
if [ ! -f "$filename" ]
then echo "not a valid filename!"
exit 1
fi

read -p "Enter letter: " letter
if [[ ! "$letter" =~ ^[[:alpha:]]$ ]]
then echo "Invalid! Please enter a single letter"
exit 1
fi

function count_letter(){
count=$(grep -i -o "$letter" "$filename" | wc -l)
echo "Count of letter $letter in the $filename is: " $count
}

count_letter $letter $filename