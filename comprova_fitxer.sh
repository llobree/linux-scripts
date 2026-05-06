#!/bin/bash

# Demanem la ruta a l'usuari
read -p "Introdueix la ruta d'un fitxer o directori: " RUTA

# Comprovem que l'usuari no hagi deixat la ruta buida
if [ -z "$RUTA" ]; then
    echo "No has introduït cap ruta"
    exit 1
fi

# Comprovem si l'element existeix
if [ -e "$RUTA" ]; then
    # Si existeix, comprovem si és un fitxer regular
    if [ -f "$RUTA" ]; then
        echo "L'element $RUTA existeix i és un fitxer"
    # O si és un directori
    elif [ -d "$RUTA" ]; then
        echo "L'element $RUTA existeix i és un directori"
    else
        echo "L'element $RUTA existeix però no és ni un fitxer regular ni un directori"
    fi

    # Comprovem permisos de lectura
    if [ -r "$RUTA" ]; then
        echo "Tens permisos per llegir aquest element"
    else
        echo "No tens permís de lectura"
    fi
else
    # Si no existeix, mostrem error
    echo "Error: La ruta $RUTA no es troba en el sistema"
fi
