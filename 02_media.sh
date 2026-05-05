#!/bin/bash
#CONTROL D'ERROR
if [ $# -eq 0 ]; then
    almanco "has de posar un parametre" 
    exit 1
fi

#inicialitzam a 0
SUMA=0
#guardar la quantitat de numeros
QUANTS=${#}


while [ ${#} -gt 0 ]; do 
    SUMA=$((SUMA+${1}))
    shift

done
#aqui SUMA conte la suma dels parametres
#la mitjana es dividir la suma entre el numero de parametres
 MITJANA=$((SUMA/QUANTS))
 echo "la mitjana val ${MITJANA}"