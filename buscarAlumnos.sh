#!/bin/bash
# Autor: root
# Fecha:  09/11/2021
# Descripción: Script usando el <<for>>
clear

verify=1
read -p "Introduce un nombre... : " alumno
echo ""

for i in `cat alumnos.txt`
do
	if [ $alumno = $i ]
	then
		echo -e "\e[0;32m* $i \e[0m"
		verify=0
	else
	echo "- $i"
	sleep .05
	fi
done

if [ $verify -eq 0 ]
then
	echo ""
	echo -e "\e[0;32m $alumno está dentro de la lista \e[0m"
else
	echo ""
	echo -e "\e[0;31m $alumno no está dentro de la lista \e[0m"
	echo ""
	read -p "¿Quieres añadirlo...? [s/n] " respuesta
	if [ $respuesta = "s" ]
	then
		echo ""
		echo $alumno >> alumnos.txt
		echo "Se ha añadido a $alumno correctamente... "
	else
		echo ""
		echo "Saliendo..."
	fi
fi