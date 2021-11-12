#!/bin/bash

clear

echo "--------------"
echo " EJERCICIO 5  "
echo "--------------"
echo ""
if [ -d $1 ]
then
	echo "Copiando todos los ficheros .dat al directorio $1 ..."
	sleep .5
	cp *.dat $1
	echo "Ficheros .dat copiados..."
	echo "Copiando los ficheros .c al directorio $1 ..."
	cp *.c $1
	echo "Finalizado..."
	sleep .5
	exit 0
else
	echo "El fichero $1 no existe, vamos a crearlo..."
	sleep .5
	mkdir $1
	echo ""
	echo "Directorio $1 creado..."
	echo "Copiando todos los ficheros .dat al directorio $1 ..."
	sleep .5
	cp *.dat $1
	echo "Ficheros .dat copiados..."
	echo "Copiando los ficheros .c al directorio $1 ..."
	cp *.c $1
	echo "Finalizado..."
	sleep .5
	exit 0
fi
