#!/bin/bash
# Autor: u-server
# Fecha:  25/11/2021
# Descripción: Adivinar un número generado por la máquina

clear

echo "~~~~~~~~~~~~~~"
echo "GUESS THE DICE"
echo "~~~~~~~~~~~~~~"
echo ""
read -n 1 -p "Pulsa una tecla para jugar... "
echo "--------------------------------------"
sleep .5
echo "Turno de la máquina..."
sleep .1
echo ""
echo "Tirando el dado..."

DICE=$(($RANDOM % 6))
if [ $DICE = 0 ]
then
    let DICE=1
fi

sleep 1
echo "-------------------------------------"
read -n 1 -p "Tu turno, introduce un valor del 1 al 6: " DADO
while [ $DADO -lt 1 -a $DADO -gt 6 ]
do
    echo "Valor incorrecto, introduce un valor del 1 al 6..."
    read DADO
done
if [ $DADO = $DICE ]
then
    echo ""
    echo "¡¡¡VICTORIA!!!"
    read -p "¿Quieres volver a jugar... [s/n]? " REPLAY
    if [ "$REPLAY" = "s" ]
    then
        ./16.sh
    else
        clear
        echo "Saliendo..."
        sleep .5
        exit 0
    fi
else
    echo ""
    echo "¡¡¡Lástima, has perdido!!!"
    echo "El valor del dado era $DICE"
    echo ""
        read -p "¿Quieres volver a jugar... [s/n]? " REPLAY
    if [ "$REPLAY" = "s" ]
    then
        ./16.sh
    else
        clear
        echo "Saliendo..."
        sleep .5
        exit 0
    fi
fi