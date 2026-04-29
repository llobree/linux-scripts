
#!/bin/bash
# Script per actualitzar el sistema i instal·lar paquets passats com a paràmetres
# Ús: ./ai.sh paquet1 paquet2 ...

# Comprovació de paràmetres
if [ $# -eq 0 ]; then
    echo "Error: No s'han indicat paquets."
    echo "Ús: $0 paquet1 paquet2 ..."
    exit 1
fi

# Actualització del sistema
echo "Actualitzant índex de paquets..."
apt update

echo "Actualitzant el sistema..."
apt upgrade -y

# Instal·lació dels paquets rebuts
echo "Instal·lant paquets: $@"
apt install -y "$@"

echo "Procés completat correctament."
