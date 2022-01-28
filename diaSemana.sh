#!/bin/bash
# Autor: root
# Fecha:  09/11/2021
# Descripción: Recoge un número y comprueba su día de la semana

clear

read -p "Introduce un número del 1 al 7...: " num
read -p "Y ahora introduce un número del 1 al 12...: " mes
case $num in
	1)
		echo "Hoy es Lunes"
		;;
	2)
		echo "Hoy es Martes"
		;;
	3)
		echo "Hoy es Miércoles"
		;;
	4)
		echo "Hoy es Jueves"
		;;
	5)
		echo "Hoy es Viernes"
		;;
	6)
		echo "Hoy es Sábado"
		;;
	7)
		echo "Hoy es Domingo"
		;;
	*)
		echo "La semana solo tiene 7 días"
		;;
esac
case $mes in
	1)
		echo "Es enero"
		;;

	2)
		echo "Es febrero"
		;;

	3)
		echo "Es marzo"
		;;

	4)
		echo "Es abril"
		;;

	5)
		echo "Es mayo"
		;;

	6)
		echo "Es junio"
		;;

	7)
		echo "Es julio"
		;;

	8)
		echo "Es agosto"
		;;

	9)
		echo "Es septiembre"
		;;

	10)
		echo "Es octubre"
		;;

	11)
		echo "Es noviembre"
		;;

	12)
		echo "Es diciembre"
		;;
	*)
		echo "El año solo tiene 12 meses"
		;;
esac
