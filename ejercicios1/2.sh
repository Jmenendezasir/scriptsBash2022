#!/bin/bash

clear

echo "--------------"
echo " EJERCICIO 2  "
echo "--------------"
echo ""

NOMBRE=backup`date +"%Y-%m-%d"`.tar.gz

tar -cpvzf $NOMBRE /home/$USER
if [ -f $NOMBRE ]
then
	echo "Se ha realizado la copia de seguridad con éxito..."
else
	echo "Ha ocurrido un error al hacer la copia de seguridad..."
fi
