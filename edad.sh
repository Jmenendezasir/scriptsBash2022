#!/bin/bash
# Autor: u-server
# Fecha:  05/11/2021
# Descripción: Adivinar edad

clear

read -p "¿Qué edad crees que tengo? " RES

if [ $RES = 22 ]
then
	echo "Correcto, tengo 22 años"
else
	read -p "Incorrecto, prueba de nuevo... "
	./edad.sh
fi
