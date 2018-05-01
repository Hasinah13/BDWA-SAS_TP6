#!/bin/bash


Args=$1



# check if last argument is directory

if [[ -d "$Args" ]]; then
   echo "it is a directory"
else
   echo "it is not a directory"
   echo -n "Please enter a valid argument :"
   read text
   echo "$text"
   while [[ ! -d "$text" ]]; 
   do
   	echo -n "this is not a valid directory please check again "

   	read text
   	
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

cd /tmp/backups
date=$(date "+%d-%m-%Y")
tar cfz backup-$date
mv backup-$date.tar.gz /backups
echo "Last backup: $date" >> /tmp/backups/backups.log