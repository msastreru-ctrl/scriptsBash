#!/bin/bash
# endevina -- endevina un nombre entre 1 i 100 en 5 intents

NUMERO=$((RANDOM % 100 + 1))
INTENTS=5
ENCERTAT=0

while [ $INTENTS -gt 0 ] && [ $ENCERTAT -eq 0 ]; do
    read -p "Entra un nombre (1-100): " RESPOSTA

    # Validar que sigui entre 1 i 100
    if [ $RESPOSTA -lt 1 ] || [ $RESPOSTA -gt 100 ]; then
        echo "Introdueix un nombre entre 1 i 100."
        continue
    fi

    # Comparar la resposta amb el nombre
    if [ $RESPOSTA -eq $NUMERO ]; then
        echo "Has encertat! El nombre era $NUMERO."
        ENCERTAT=1
    else
        INTENTS=$((INTENTS - 1))

        if [ $RESPOSTA -lt $NUMERO ]; then
            echo "El nombre es mes gran. Et queden $INTENTS intents."
        else
            echo "El nombre es mes petit. Et queden $INTENTS intents."
        fi
    fi
done

# Missatge final si no ha encertat
if [ $ENCERTAT -eq 0 ]; then
    echo "No has encertat. El nombre era $NUMERO."
fi