#!/bin/bash
# Autor: root
# Fecha:  09/11/2021
# Descripción: Script usando el <<for>>
clear

for i in `seq 1 60`
do
if [ $i = 60 ]
then
	$i = 0
	$min++
else
	if [ $i -lt 10 ]
	then
		echo "TEMPORIZADOR"
		echo ""
		echo "0$min:0$i"
		sleep 1
		clear
	else

		echo "TEMPORIZADOR"
		echo ""
		echo "0$min:$i"
		sleep 1
		clear
	fi
fi
done
