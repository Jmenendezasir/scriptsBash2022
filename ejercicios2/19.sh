#!/bin/bash
# Autor: u-server
# Fecha:  25/11/2021
# Descripción: Determinar de una serie de parámetros cuál es fichero y cuál directorio.

clear

for i in $@
do
    if [ -d $i ]
    then
        echo "$i es un directorio"
    elif [ -f $i ]
    then
        echo "$i es un fichero"
    else
        echo "$i no se reconoce como archivo ni fichero..."
        sleep 1
        read -p "¿Quieres crearlo? [s/n] " RES
        if [ "$RES" = "s" ]
        then
            read -p "¿Crear fichero o directorio? [f/d] " TIPO
            if [ "$TIPO" = "f" ]
            then
                nano $i
            elif [ "$TIPO" = "d" ]
            then
                mkdir $i
            fi
        fi
    fi
done