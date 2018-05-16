#!/bin/bash

BackupDirectory=$1

# check if last argument is directory

if [[ -d "$BackupDirectory" ]]; then
   echo "it is a directory"
else
   echo "it is not a directory"
   echo -n "Please enter a valid argument tosttostt:"
   read Args
   echo "$BackupDirectory"
   while [[ ! -d "$BackupDirectory" ]]; 
   do
   	echo -n "this is not a valid directory please check again "

   	read Args
   	
   	#close to the correct answer, fixed infinite loop, try something with case $var in -d
   	#for archive right something as 
   	#echo var name:
   	#read varname
   	#echo file >> /tmp/archive/$varname
   done

echo "gg"

fi

if [[ -d /tmp/backups ]]; then
	echo "Yolo"
else
   mkdir /tmp/backups
fi

date=$(date "+%H:%M %d/%m/%Y")
tar -cpzf /tmp/backups/$BackupDirectory.tar.gz $BackupDirectory
# mv $BackupDirectory.tar.gz /tmp/backups
echo "Last backup of $BackupDirectory : DATE TIME $date" >> /tmp/backups/backups.log