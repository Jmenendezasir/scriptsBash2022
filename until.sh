#!/bin/bash
# Autor: u-server
# Fecha:  18/11/2021
# Descripción: Imprimir en pantalla los numeros del 0 al 9 en orden inverso con until

clear

read -p "Introduce un valor: " n
until [ $n -lt 0 ]
do
    echo "$n"
    let n=n-1
    sleep .1
    clear
done
