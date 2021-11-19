#!/bin/bash
# Autor: u-server
# Fecha:  19/11/2021
# Descripción: Crear una función llamada cubo que calcula el cubo de un entero.

#Declaración

hacerCubo (){
    echo "$num^3 =" $(($num*$num*$num))
}
clear

echo "---------"
echo "  CUBO   "
echo "---------"

read -p "Introduce un valor...: " num

hacerCubo

read -p "¿Quieres hacer otra operación? [s/n] " respuesta
if [ $respuesta = "s" ]
then
    ./hacerCubo.sh
else
    echo "Saliendo..."
    sleep .5
    exit
fi