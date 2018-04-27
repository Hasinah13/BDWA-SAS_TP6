#!/bin/bash

<<<<<<< HEAD

Args=$1

=======
Args=$1
>>>>>>> 7f13eb89b47790fdd8db082773ec77bf957547be

# check if last argument is directory

if [[ -d "$Args" ]]; then
   echo "it is a directory"
else
   echo "it is not a directory"
<<<<<<< HEAD
   echo -n "Please enter a valid argument :"
   read text
   echo "$text"
   while [[ ! -d "$text" ]]; 
   do
   	echo -n "this is not a valid directory please check again "
   	read text
   	echo "$text"
   	#close to the correct answer, fixed infinite loop, try something with case $var in -d
   	#for archive right something as 
   	#echo var name:
   	#read varname
   	#echo file >> /tmp/archive/$varname
   done

echo "gg"

fi
=======
fi

# if it is not a directory

while [ -d ${!Args} ]
do
	echo "Bad path"
done

echo "Good path"
>>>>>>> 7f13eb89b47790fdd8db082773ec77bf957547be
