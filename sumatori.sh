#!/bin/bash 


if [[ $# -ne 1 ]]
then
    echo "ERROR: se requiere un unico parametro"
    exit 1
fi 


#comprobar que relalmente tenemos un numero 
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: se requiere un numero"
    exit 1
fi

echo "vamos a calcular el sumatorio de $1"

#recoger el valor de n
n=$1
suma=0


#bucle for 
for (( i=1;i<=n;i++))
do
    suma=$((suma+i))
done


echo "el sumatorio de $n vale  $suma"
#calcular el sumatorio de un numero, por ejemplo el sumatorio de 5 seria 1+2+3+4+5
exit 0