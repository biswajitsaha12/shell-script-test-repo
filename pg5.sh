#Write a shell script that takes a directory path as input and recursively searches for all files with the extension ".txt". For each file, the script should create a new file with the same name but with the extension changed to ".bak", and the contents of the new file should be the same as the original file but with all instances of the word "foo" replaced with "bar".
#!/bin/bash

read -p "Enter directory path: " dir_path

if [ ! -d $dir_path ]
then 
  echo "directory not found!"
  exit 1
fi

find "$dir_path" -name "*.txt" -type f -print | while read -d $'\n' orig_file
do
  if [ ! -f ${orig_file%.*}.bak ]
  then
    new_file="${orig_file%.*}.bak"
    cp "$orig_file" "$new_file"
  fi
  
  # pattern search and replace
  sed -i '' 's/foo/bar/g' "$new_file"
done