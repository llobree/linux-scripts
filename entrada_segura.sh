#!/bin/bash

# Bucle UNTIL: repetir fins que la ruta existeixi
until [ -e "$ruta" ]; do
    read -p "Introdueix la ruta d'un fitxer (o 'sortir' per acabar): " ruta

    # Control de sortida
    if [ "$ruta" = "sortir" ]; then
        echo "Sortint de l'script..."
        exit 0
    fi

    # Control de variable buida
    if [ -z "$ruta" ]; then
        echo "No has introduït cap ruta."
        continue
    fi

    # Si no existeix, error
    if [ ! -e "$ruta" ]; then
        echo "La ruta no és vàlida, torna-ho a intentar."
    fi
done

echo "Ruta vàlida detectada: $ruta"

# Demanar un número per al compte enrere
read -p "Introdueix un número per al compte enrere: " num

# Validació numèrica
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: Has d'introduir un valor numèric."
    exit 1
fi

# Bucle WHILE: compte enrere
while [ "$num" -ge 0 ]; do
    echo "Processant l'element en $num segons..."
    sleep 1
    num=$((num - 1))
done

echo "Procés completat!"
