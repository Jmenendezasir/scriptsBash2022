#!/bin/bash
# Autor: u-server
# Fecha:  05/11/2021
# Descripción: Comprobar si un numero es positivo o negativo

clear

read -p "Introduce un número... " NUM

if [ $NUM -lt 0 ] 2> /dev/null
then
	echo "Es un número negativo"
elif [ $NUM -gt 0 ] 2> /dev/null
then
	echo "Es un número positivo"
elif [ $NUM -eq 0 ] 2> /dev/null
then
	echo "0 no es un número positivo ni negativo"
else
	echo "Has introducido un dato inválido"
fi
