#!/bin/bash
# Autor: u-server
# Fecha:  18/11/2021
# Descripción: De todos los números introducidos en iteración, interrumpir cuando se introduzca un valor negativo e imprimir el mayor valor de todos

clear

read -p "Introduce un número: " n
let mayor=0
until [ $n -lt 0 ]
do
    read -p "Introduce un número: " n
    if [ $n -gt $mayor ]
    then
        let mayor=n
    fi
done

echo ""
echo "El número $mayor es el mayor de los que se ha introducido."
echo ""
read -p "¿Volver a jugar? [s/n] " respuesta

if [ $respuesta = "s" ]
then
    ./mayorNumero.sh
else
    clear
    echo "Saliendo..."
    sleep .5
    exit
fi