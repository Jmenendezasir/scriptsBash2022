#!/bin/bash

clear

echo "--------------"
echo " EJERCICIO 9  "
echo "--------------"
echo ""
echo "Vamos a comprimir los ficheros $*"
for i in "$@"
do
	tar -cpvzf copia.bkp $i
	echo "Fichero $i comprimido correctamente"
done

echo "Todos los ficheros se han comprimido en copia.bkp"
