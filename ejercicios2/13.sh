#!/bin/bash
# Autor: u-server
# Fecha:  25/11/2021
# Descripción: Hacer operación entre dos números.

clear

echo "-----------"
echo "CALCULADORA"
echo "-----------"
echo ""

read -p "Introduce un número: " NUM1
read -p "Introduce otro número: " NUM2

clear

echo "-----------"
echo "CALCULADORA"
echo "-----------"
echo ""
echo "a. Suma"
echo "b. Resta"
echo "c. Multiplicación"
echo "d. División"
echo "e. Salir"
echo ""
read -n 1 -p "Elige una operación... " OPCION
echo ""

case $OPCION in
    a)
        RESULTADO=$(($NUM1+$NUM2))
        echo "$NUM1 + $NUM2 = $RESULTADO"
        ;;
    b)
        RESULTADO=$(($NUM1-$NUM2))
        echo "$NUM1 - $NUM2 = $RESULTADO"
        ;;
    c)
        RESULTADO=$(($NUM1*$NUM2))
        echo "$NUM1 x $NUM2 = $RESULTADO"
        ;;
    d)
        RESULTADO=$(($NUM1/$NUM2))
        echo "$NUM1 / $NUM2 = $RESULTADO"
        ;;
    e)
        echo "Saliendo..."
        sleep .1
        exit 0
        ;;
    *)
        echo "No es una opción correcta. Vuelve a intentarlo"
        sleep .5
        ./13.sh
esac