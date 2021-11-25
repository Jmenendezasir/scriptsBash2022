#!/bin/bash
# Autor: u-server
# Fecha:  25/11/2021
# Descripción: Mostrar la tabla de multiplicar de un número

i=0

clear

read -p "Introduce un número...: " NUM

until [ $i -eq 10 ]
do
    i=$(($i+1))
    RESULTADO=$(($NUM*$i))
    echo "$NUM x $i = $RESULTADO"
    sleep .05
done