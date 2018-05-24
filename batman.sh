#!/bin/bash

#adding the argument to a variable
BackupDirectory=$1

# check if the variable is a directory
if [[ -d "$BackupDirectory" ]]; then
   echo "it is a directory"
else #continuous check for a directory
   echo "it is not a directory"
   echo -n "Please enter a valid argument :"
   read BackupDirectory
   echo "you entered: $BackupDirectory" #shows what was sent to see where the error was
   while [[ ! -d "$BackupDirectory" ]]; #same principle as line 7 just seen from the other side.
   do
   	echo -n "this is not a valid directory please check again "

   	read BackupDirectory
   done

echo "yes this is a directory" 

fi #end of if{}

if [[ -d /tmp/backups ]]; then #checks if the dir already exists
echo " "
else
   mkdir /tmp/backups #if the dir does not exists it creates it
fi #end of if{}

#archive of the work
date=$(date "+%H:%M %d/%m/%Y")
tar -cpzf /tmp/backups/$BackupDirectory.tar.gz $BackupDirectory #compressing and saving
echo "Last backup of $BackupDirectory : DATE TIME $date" >> /tmp/backups/backups.log #writes in the backups.log file to keep track of what was backed