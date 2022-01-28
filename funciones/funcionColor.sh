#!/bin/bash
# Autor: u-server
# Fecha:  19/11/2021
# Descripción: Pasar como parámetro un texto y un color y proyectarlo

#source
source repoColores.sh

case $2 in
    verde)
        verde $1
        ;;
    rojo)
        rojo $1
        ;;
    arcoiris)
        arcoiris $1
        ;;
    azul)
        azul $1
        ;;
        *)
        echo -e "\e[0;31m"El color no existe o no está contemplado..."\e[0m"
        ;;
esac