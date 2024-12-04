#!/bin/bash

# Gestion intelligente du répertoire
if [ -z "$1" ] || [ "$1" = "." ]; then
    DIR="$PWD"
else
    DIR="$1"
fi

# Vérification de l'existence du répertoire
if [ ! -d "$DIR" ]; then
    echo "Le répertoire \"$DIR\" n'existe pas."
    exit 1
fi

# Vérification de Visual Studio Code
if ! command -v code &> /dev/null; then
    echo "Visual Studio Code n'est pas installé. Veuillez l'installer."
    exit 1
fi

# Compteur de projets ouverts
OPENED_PROJECTS=0

# Parcours de chaque sous-dossier et lancement de VSCode
for d in "$DIR"/*/; do
    if [ -d "$d" ] && [ -d "$d.git" ]; then
        code "$d" &
        ((OPENED_PROJECTS++))
    fi
done

# Message final personnalisé
if [ $OPENED_PROJECTS -gt 0 ]; then
    echo "Vos projets ont correctement été lancés avec VSCode."
else
    echo "Aucun projet n'a été trouvé dans \"$DIR\"."
fi
