#!/bin/bash

#demande chemin d'un dossier en premier argumente
echo -n "Quel est le chemin du dossier ?"
read arr1[1]

if [ -d ${arr1[1]} ] ; then
    echo "c'est un dossier"
else
    echo "ce n'est pas un dossier"
fi

