#demande chemin d'un dossier en premier argumente
echo -n "Quel est le chemin du dossier ?"
read chemin_entre

if [ -d $chemin_entre = 0 ]; then
	echo -n "whou"
else 
	echo -n "3"
fi