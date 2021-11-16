#!/bin/bash

clear

echo "--------------"
echo " EJERCICIO 10 "
echo "--------------"

if [ $2 = "-A" ]
then
	sort $1
elif [ $2 = "-Z" ]
then
	sort -r $1
else
	echo "No se ha pasado ningún parámetro de orden"
fi
