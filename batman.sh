#!/bin/bash

numArgs=$#
lastArg="${!numArgs}"

# check if last argument is directory

if [[ -d "$lastArg" ]]; then
   echo "it is a directory"
else
   echo "it is not a directory"
fi