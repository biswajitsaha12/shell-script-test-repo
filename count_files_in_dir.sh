#!/bin/bash
read -p "enter directory path: " dir_path
count=0

if [ ! -d "$dir_path" ]
    then echo "directory not found!"
    exit 1
fi

for item in $dir_path/*
do
  if [ -e "$item" ]
  then
    ((count++))
  fi
done
echo "no. of files in directory are: $count"