#!/bin/bash

read -p "Introdueix X: " X

if [[ ${X} -le 5 ]]
then
    echo "has introduit un numero menor o igual a 5"
else
    echo "has introduit un numero mes gran que 5"
fi
