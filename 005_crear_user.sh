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

read -p "introdueix el nom complet: " COMMENTS
#demanam el nom del usuari
read -p "introdueix el nom d'usuari: " USER_NAME
#deamanam el pasword
read -p "Introdueix el password: " PASSWORD


#creariem l'usuari
usseradd -m -c "${COMMENTS}" ${USSE_NAME} &> /dev/null
#control de la darrera comanda
if[[ ${?} -ne 0 ]]
then
    echo "errada creant l'usuari"
    exit 1 
fi 

#canvi de password 
echo "${USER}:${PASSWORD}" | chpasswd
#comprovam si el canvi de password ha anat be

exit 0 