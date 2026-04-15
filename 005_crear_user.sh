#!/bin/bash
function usage(){
    echo "Usage ${O}"
    echo 
    echo "Has de ser ROOT"
    echo "l'usuari no es pot repetir"
    exit 1
}

#script per crear un usuari

#primer comprovam si som l'usuari root
if [[ ${UID} -ne 0 ]]
then
    usage 
fi

read -p "introdueix el nom d'usuari: " USER_NAME

echo "creant l'usuari ${USER_NAME}"