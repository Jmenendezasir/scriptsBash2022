#!/bin/bash

clear

echo "--------------"
echo " EJERCICIO 6  "
echo "--------------"
echo ""
echo "Listado recursivo de un directorio"
echo ""
if [ -d $1 ]
then
	ls -lR $1 | grep "^d"
else
	echo "El directorio no existe o no se ha escrito correctamente..."
fi
