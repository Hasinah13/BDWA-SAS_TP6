#!/bin/bash

# On fait planter le script si il lance une commande qui plante
set -o errexit
set -o pipefail
#on interdit l'utilisation de variable non déclarées
set -o nounset


# demander le chemin d'un dossier en premier argument

# tester si le chemin entré en paramètre est bien un dossier

# Si le dossier entré en paramètre n'est pas un dossier on redemande à l'utilisateur d'entrer un chemin et on récupère la valeur en la testant a nouveau (avec une boucle)

# le chemin est bien un dossier on créer un archive avec le contenu du dossier et on la place dans le dossier /tmp/backups/

if [ ! -e "/tmp/backup/" ]; then
	mkdir /tmp/backup
fi


chemin=$HOME/test
cd chemin
date=$(date '+%d-%m-%Y')
tar cfz backup-$date.tar.gz 
mv backup-$date.tar.gz /tmp/backup/