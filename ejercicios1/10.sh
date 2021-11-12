#!/bin/bash

clear

echo "--------------"
echo " EJERCICIO 10 "
echo "--------------"

if [ $2 = "A" ]
then
	sort $1
elif [ $2 = "Z" ]
then
	sort $1 -r
else
	echo "No se ha pasado ningún parámetro de orden"
fi
