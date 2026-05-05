#!/bin/bash

#Al manco un parametre 
if [ $# -eq 0 ]; then
    echo "has de posar al manco un parametre"
    exit 1
fi

#EL FACTORIAL DE 1 ES 1
#EL FACTORIAL ÉS PER EXEMPLE 3!=3x2x1=6
#EL FACTORIAL DE 10!=19x9x8x7x6x5x4x3x2x1
N=$1

if [ $N -gt 25]; then
    echo "no podem calcular factorials majors que 25"
    exit 1
fi
if [ $N -gt 25 ]; then 
    echo "No podem calcular factorials de numeros negatius"
    exit 1
fi

FACTORIAL=1

while [ $N -gt 0]; do
    #abans de restar, multiplicar aquesta N al factorial 
    FACTORIAL
    N=$((N-1))

done 
echo "EL FACOTORIAL DE ${1} VAK ${FACTORIAL}"