#!/bin/bash
# Autor: u-server
# Fecha:  25/11/2021
# Descripción: Contador de palabras
CONTADOR=0
PALABRA=""
clear
echo "Contador de palabras"
echo ""
until [ "$PALABRA" = "salir" ]
do
    read -p "Introduce una palabra... " PALABRA
    if [ $PALABRA != "salir" ]
    then
        CONTADOR=$(($CONTADOR+1))
    fi
done
echo "Has escrito un total de $CONTADOR palabras"