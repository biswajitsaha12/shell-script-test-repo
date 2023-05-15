#script to take files as input and copy it to a 'backup' folder and also compress the folder with timestamp
#!/bin/bash
read -p "Enter list of files: " -a files

if [ ! -d "backup" ]
then
  mkdir backup
fi

for i in ${files[@]}
do
  cp $i backup/
done

#creating a compressed archive of the backup folder
timestamp=$(date +%Y-%m-%d-%H-%M-%S)
tar czf backup_$timestamp.tar.gz backup