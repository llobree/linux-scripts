#!/bin/bash

# Funció benvinguda
# Paràmetres:
#   $1 -> Nom de l'alumne
benvinguda() {
    local nom_alumne="$1"
    echo "Hola ${nom_alumne}, anem a comprovar el sistema"
}

# Funció comprova_usuari
# Paràmetres:
#   $1 -> Nom d'usuari del sistema
# Retorna (per stdout) si l'usuari existeix o no
comprova_usuari() {
    local usuari="$1"

    if grep -q "^${usuari}:" /etc/passwd; then
        echo "L'usuari '${usuari}' existeix al sistema."
    else
        echo "L'usuari '${usuari}' NO existeix al sistema."
    fi
}

# Funció calculadora_espai
# Sense paràmetres
# Mostra l'espai lliure de la partició principal (/)
calculadora_espai() {
    echo "Espai lliure a la partició principal (/):"
    df -h /
}

# ---------- Lògica principal de l'script ----------

# Demanar el nom de l'alumne i cridar benvinguda
read -p "Introdueix el teu nom: " nom_introduit
benvinguda "$nom_introduit"

# Demanar un nom d'usuari del sistema i cridar comprova_usuari
read -p "Introdueix un nom d'usuari del sistema a comprovar: " usuari_introduit
comprova_usuari "$usuari_introduit"

# Cridar la calculadora_espai per tancar l'execució
calculadora_espai
