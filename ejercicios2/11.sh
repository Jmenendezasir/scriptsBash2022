#!/bin/bash
# Autor: u-server
# Fecha:  25/11/2021
# Descripción: Script que nos pida el año de nacimiento y muestre el signo del zodiaco chino

clear

read -p "Introduce tu año de nacimiento...: " YEAR
let signo=YEAR%12
case $signo in
    0) animal="Mono" ;;
    1) animal="Gallo" ;;
    2) animal="Perro" ;;
    3) animal="Cerdo" ;;
    4) animal="Rata" ;;
    5) animal="Buey" ;;
    6) animal="Tigre" ;;
    7) animal="Conejo" ;;
    8) animal="Dragon";;
    9) animal="Serpiente" ;;
    10) animal="Caballo" ;;
    11) animal="Cabra" ;;
esac

echo "Tu animal es:" $animal