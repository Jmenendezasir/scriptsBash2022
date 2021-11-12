#!/bin/bash

clear

echo "--------------"
echo " EJERCICIO 4  "
echo "--------------"
echo ""

if [ -f $1 ]
	then
	if [ -r $1 ]
	then
		echo "El archivo $1 tiene permisos de lectura"
		sleep .5
		read -p "¿Quieres abrirlo...? [s/n] " CHOICE
			if [ $CHOICE = "s" ]
			then
				more $1
			else
				clear
				echo "Saliendo..."
				sleep .5
				exit 0
			fi
	else
		echo "El archivo $1 no tiene permisos de lectura"
		sleep .5
		echo "Saliendo..."
		sleep .5
		exit 0
	fi
else
	echo "El fichero $1 no existe..."
	echo "Saliendo..."
	sleep .5
	exit 0
fi
