#!/bin/bash
# Autor: u-server
# Fecha:  19/11/2021
# Descripción: Elegir un color y sobre él proyectar la frase indicada.

#declaración
colorRojo() {
    echo -e "\e[0;31m"$frase"\e[0m"
}

colorVerde() {
    echo -e "\e[0;32m"$frase"\e[0m"
}

colorArcoiris() {
    echo -e "\e[0;32m"$frase"\e[0m"
    sleep .1
    clear
    echo -e "\e[0;31m"$frase"\e[0m"
    sleep .1
    clear
    echo -e "\e[0;33m"$frase"\e[0m"
    sleep .1
    clear
    echo -e "\e[0;34m"$frase"\e[0m"
    sleep .1
    clear
    colorArcoiris
}

clear

echo "----------"
echo "  COLOR   "
echo "----------"
echo ""
read -p "Introduce un texto...: " frase
echo "Elige un color... [ rojo / verde / arcoiris ]"
read -p "¿De qué color quieres que se vea...? " color

if [ $color = "rojo" ]
then
    colorRojo
elif [ $color = "verde" ]
then
    colorVerde
elif [ $color = "arcoiris" ]
then
    colorArcoiris
else
    echo "No es un color o no está contemplado en la lista..."
fi