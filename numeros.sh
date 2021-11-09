#!/bin/bash
# Autor: root
# Fecha:  09/11/2021
# Descripción: Compara si un numero está entre 1 y 10 y lo multiplica

clear

read -p "Introduce un número entre 1 y 10: " NUM
if [ $NUM -ge 1 -a $NUM -le 10 ]
then
	echo "$NUM x $NUM = $(($NUM*$NUM))"
else
	echo "El número está comprendido fuera del rango"
fi
