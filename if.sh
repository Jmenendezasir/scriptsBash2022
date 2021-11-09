#!/bin/bash
# Autor: u-server
# Fecha:  05/11/2021
# Descripción: Primer script con if

clear

read -p "¿Qué fichero quieres comprobar? " FICHERO

if [ -f $FICHERO ]
then
	echo "$FICHERO EXISTE"
	read -p "¿Quieres abrirlo? [s/n] " EJECUTAR

	if [ $EJECUTAR = "s" -o  $EJECUTAR = "si" ]
	then
		cat $FICHERO
	else
		echo "Cancelando el proceso..."
		sleep .5
		exit 1
	fi
else
	echo "$FICHERO NO EXISTE"
	read -p "¿Quieres crearlo? [s/n] " RESPUESTA

	if [ $RESPUESTA = "s" -o $RESPUESTA = "si" ]
	then
		nano $FICHERO
	else
		echo "Cancelando el proceso..."
		sleep .5
		exit 1
	fi
fi
