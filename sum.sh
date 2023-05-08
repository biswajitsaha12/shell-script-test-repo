#program to take list of input and print sum of even numbers
#!/bin/bash

read -p "enter list of numbers: " num
IFS=' ' read -a array <<< $num
sum=0

for i in "${array[@]}"
do
  if (($i%2==0));
  then sum=$((sum+i))
  fi
done
echo "sum of the even elements: " $sum


