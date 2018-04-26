#!/bin/bash

Args=$1

# check if last argument is directory

if [[ -d "$Args" ]]; then
   echo "it is a directory"
else
   echo "it is not a directory"
fi

# if it is not a directory

while [ -d ${!Args} ]
do
	echo "Bad path"
done

echo "Good path"