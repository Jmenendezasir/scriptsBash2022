#!/bin/bash
# Autor: u-server
# Fecha:  18/11/2021
# Descripción: Imprimir en pantalla los numeros del 0 al 9 en orden inverso con until

clear

read -p "Introduce un número: " n
let total=total+n
until [ $n -eq 0 ]
do
    read -p "Introduce un número: " n
    let total=total+n
done
clear
    echo "Sumando."
    sleep .5
    clear
    echo "Sumando.."
    sleep .5
    clear
    echo "Sumando..."
    sleep .5
    clear
    echo "Sumando."
    sleep .5
    clear

if [ $total -lt 0 ]
then
    echo "El resultado es negativo..."
else
echo "La suma total es $total"
fi