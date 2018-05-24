#!/bin/bash

## on demande a l'user de rentrer le chemin de dossier
recherche(){
echo -n "Entrez le chemin d'un dossier : "
## on lit le chemin et on l'enregistre dans làrgument dossier
read dossier
## si le dossier existe  il nous return 1
if [ -d $dossier ]; then
echo -n "ce dossier existe. Votre code retour est : "
return 1;
else
## si le dossier n'existe pas  il return 3
echo -n "ce dossier n'existe pas."
return 3;
fi;}
## foction en cas d'erreur
retester(){
echo -n " Raté! on réessaie... Entrez le chemin d'un dossier : "
##On lit le 2e dossier et on lenregistre dans la variable dossier
read dossier
## si le dossier existe il return 2
if [ -d $dossier ]; then
echo -n "ce dossier existe. Votre code retour est : "
return 2;
else
## Sinon on retourne 4
echo -n "ce dossier n'existe pas. Votre code retour est : "
return 4;
fi;}
## debut du script appel fonction recherche
recherche
##test de la valeur retournée si elle est égal a 3 on appelle la fonction retester
if [ $? -eq 3  ]; then

retester
echo $?

else echo $?
fi
## on recherche le dossier sil nexiste pas on le crée
if [ -d /tmp/backups ]; then

echo " "

else

mkdir /tmp/backups

fi
## creation et deplacement de l'archive
tar cfz backup.tar.gz $dossier
mv backup.tar.gz tmp/backups