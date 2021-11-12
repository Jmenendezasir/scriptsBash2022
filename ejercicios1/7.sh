#!/bin/bash

clear

echo "--------------"
echo " EJERCICIO 7  "
echo "--------------"
echo ""

if [ -d $1 ]
then
	echo "$1 es un directorio"
elif [ -f $1 ]
then
	echo "$1 es un fichero"
else
	echo "$1 no existe..."
fi
