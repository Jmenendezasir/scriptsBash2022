#!/bin/bash

clear

echo "--------------"
echo " EJERCICIO 8  "
echo "--------------"

if [ -d $1 ]
then
    SIZE=`du -sh -h $1`
    echo "El tamaño del directorio $1"
    echo $SIZE
elif [ -f $1 ]
then
    SIZE=`du -h $1`
    echo "El tamaño del fichero $1"
    echo $SIZE
else
    echo "No existe el fichero o directorio introducido."
fi