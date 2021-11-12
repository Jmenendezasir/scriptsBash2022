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
	ls -R $1
else
	echo "El directorio no existe o no se ha escrito correctamente..."
fi
