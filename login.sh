#!/bin/bash
# Autor: root
# Fecha:  09/11/2021
# Descripción: Comprueba si el usuario es correcto

clear

read -p "¿Cuál es tu nombre de usuario? " login

if [ $login = $USER ]
then
	clear
	echo "Hola $login ¿Qué tal? "
else
	clear
	echo "TU NO ERES $USER "
fi
