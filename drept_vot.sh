#!/bin/bash

function vot()
{
    local nume=$1
    local varsta=$2
    local dif=$((varsta - 18))

    if [ "$varsta" -ge 18 ]; then
        echo "Salut $nume, poti vota. Votezi deja de $((dif)) ani."
    fi
}

# verific dacă argumentul pozitional a fost dat
if [ $# -ne 1 ]; then
    echo "Utilizare: $0 <fisier>"
    exit 1
fi

fisier=$1

# verific dacă fișierul există
if [ ! -f "$fisier" ]; then
    echo "Fișierul $fisier nu există!"
    exit 1
fi

# citesc fișierul rand cu rand utilizând awk
awk -F', ' '{ print $1, $2 }' "$fisier" | while read -r nume varsta; do
    # elimin spațiile suplimentare (dacă există)
    nume=$(echo "$nume")
    varsta=$(echo "$varsta")

    # Verificăm dacă vârsta este un număr valid
    if [[ "$varsta" =~ ^[0-9]+$ ]]; then
        vot "$nume" "$varsta"
    else
        echo "Linie invalidă: $nume $varsta"
    fi
done
