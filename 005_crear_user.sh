#!/bin/bash

#script per crear un usuari

#primer comprovam si som l'usuari root
if [[ ${UID} -ne 0 ]]
then
    echo "Usage ${O}"
    echo 
    echo "Has de ser ROOT"
    exit 1
fi

read -p "introdueix el nom d'usuari: " USER_NAME

echo "creant l'usuari ${USER_NAME}"