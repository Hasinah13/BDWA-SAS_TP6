#!/bin/bash

recherche(){
	echo -n "Entrez le chemin d'un dossier : "
	read dossier

if [ -d $dossier ]; then
	echo -n "ce dossier existe. Votre code retour est : "
	return 1;
else
	echo -n "ce dossier n'existe pas."
	return 3;
fi;}

retester(){
	echo -n " Raté! on réessaie... Entrez le chemin d'un dossier : "
	read dossier2

if [ -d $dossier2 ]; then
	echo -n "ce dossier existe. Votre code retour est : "
	return 2;
else
	echo -n "ce dossier n'existe pas. Votre code retour est : "
	return 4;
fi;}

recherche

if [ $? -eq 3  ]; then

	retester
	echo $?

else echo $?
fi

if [ -d /tmp/backups ]; then

	echo " "

else

	mkdir /tmp/backups
	
fi

tar cfz backup.tar.gz $dossier
mv backup.tar.gz tmp/backups