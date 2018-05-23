#!/bin/bash

dossier=$1 #demande chemin d'un dossier en premier argumente

while [[ ! -d "$dossier" ]]; #Tant que l'argument n'est pas un dossier
do
	echo "ce n'est pas un dossier"
	echo -n "Quel est le chemin du dossier ?"
	read dossier #On redemande d'entrer un chemin
done

if [[ -d "$dossier" ]]; then # Si c'est un dossier
    echo "c'est un dossier" 
    tar -cpzf /tmp/backup/$dossier.tar.gz $dossier #creer l'archive compressé dans /tmp/backup
fi