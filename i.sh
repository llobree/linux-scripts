#!/bin/bash
# Script per actualitzar el sistema i instal·lar paquets definits en una variable

# Definim la variable amb els paquets a instal·lar
PAQUETS="vim git curl"

# Actualització de la llista de paquets
echo "🔄 Actualitzant la llista de paquets..."
apt update

# Actualització dels paquets instal·lats
echo "⬆️ Actualitzant paquets instal·lats..."
apt upgrade -y

# Instal·lació dels paquets definits
echo "📦 Instal·lant paquets: $PAQUETS"
apt install -y $PAQUETS

echo "✔️ Procés completat!"
