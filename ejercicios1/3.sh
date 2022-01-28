#!/bin/bash

clear

echo "--------------"
echo " EJERCICIO 3  "
echo "--------------"
echo ""
echo "~~~~~~~~~~~~~~"
echo " CALCULADORA  "
echo "~~~~~~~~~~~~~~"
echo ""

let VALOR1=0
let VALOR2=0

select OPTION in SUMA RESTA MULTIPLICACIÓN DIVISIÓN SALIR
do
	if [ $OPTION = SUMA ]
		then
		read -p "Introduce el primer valor...: " VALOR1
		read -p "Introduce el segundo valor...: " VALOR2
		let SUMA=$VALOR1+$VALOR2
		echo "$VALOR1 + $VALOR2 = $SUMA"
		sleep .5
		read -p "¿Quieres hacer otra operación?[s/n] " ELECCION
			if [ $ELECCION = "s" ]
			then
				./3.sh
			else
				echo "Saliendo de la calculadora..."
				sleep .5
				exit 0
			fi
	fi
	if [ $OPTION = RESTA ]
		then
		read -p "Introduce el primer valor...: " VALOR1
		read -p "Introduce el segundo valor...: " VALOR2
		let RESTA=$VALOR1-$VALOR2
		echo "$VALOR1 - $VALOR2 = $RESTA"
		sleep .5
		read -p "¿Quieres hacer otra operación?[s/n] " ELECCION
			if [ $ELECCION = "s" ]
			then
				./3.sh
			else
				echo "Saliendo de la calculadora..."
				sleep .5
				exit 0
			fi
	fi
	if [ $OPTION = MULTIPLICACIÓN ]
		then
		read -p "Introduce el primer valor...: " VALOR1
		read -p "Introduce el segundo valor...: " VALOR2
		let MULTI=$VALOR1*$VALOR2
		echo "$VALOR1 x $VALOR2 = $MULTI"
		sleep .5
		read -p "¿Quieres hacer otra operación?[s/n] " ELECCION
			if [ $ELECCION = "s" ]
			then
				./3.sh
			else
				echo "Saliendo de la calculadora..."
				sleep .5
				exit 0
			fi
	fi
	if [ $OPTION = DIVISIÓN ]
		then
		read -p "Introduce el primer valor...: " VALOR1
		read -p "Introduce el segundo valor...: " VALOR2
		let DIVI=$VALOR1/$VALOR2
		echo "$VALOR1 % $VALOR2 = $DIVI"
		sleep .5
		read -p "¿Quieres hacer otra operación?[s/n] " ELECCION
			if [ $ELECCION = "s" ]
			then
				./3.sh
			else
				echo "Saliendo de la calculadora..."
				sleep .5
				exit 0
			fi
	fi
	if [ $OPTION = SALIR ]
	then
		clear
		echo "Saliendo de la calculadora..."
		sleep .5
		exit 0
	fi
done
