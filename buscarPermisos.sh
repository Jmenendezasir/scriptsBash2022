#!/bin/bash
# Autor: root
# Fecha:  09/11/2021
# Descripción: Busca ficheros de un directorio proporcionado y les da permisos de ejecución

clear

read -p "Proporciona un directorio... " directorio

if [ ls $directorio/*.sh ]
then
	for i in $(ls $directorio/*.sh)
	do
		if [ -x $i ]
		then
			echo "$i ya tiene permisos concedidos."
		else
			chmod u+x $i
			echo "Permiso concedido en $i"
		fi
	done
else
	echo "El directorio no contiene scripts o no existe."
	exit 1
fi
