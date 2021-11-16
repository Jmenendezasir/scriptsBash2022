#!/bin/bash

clear

echo "--------------"
echo " EJERCICIO 9  "
echo "--------------"
echo ""
echo "Vamos a comprimir los ficheros de $*"

tar -cpvzf copia.bkp $*

echo "Los ficheros de $* se han comprimido correctamente"
echo "Todos los ficheros se han comprimido en copia.bkp"