#!/bin/bash
# Autor: u-server
# Fecha:  25/11/2021
# Descripción: De todos los números pasados por parámetro, sacar el mayor.

anterior=0
mayor=0

clear

for i in $@
do
    if [ $i -gt $mayor ]
    then
        mayor=$i
    fi
    anterior=$i
done

echo "El mayor de los números introducidos es $mayor"