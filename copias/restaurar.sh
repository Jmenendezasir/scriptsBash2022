#!/bin/bash

source colores.sh

clear

if ! [ $(id -u) = 0 ]
then 
    echo "Este usuario no tiene permisos para restaurar ficheros de usuario..."
    echo ""
    read -n1 -p "Pulsa una tecla para salir..."
    exit 1 
fi

verde "__________________________________"
verde "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
verde "  RESTAURAR BACKUP DE USUARIOS    "
verde "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
verde "__________________________________"
echo ""

read -n1 -p "Pulsa una tecla para restaurar una copia de seguridad de los usuarios..."


for i in $@
do
    if grep "/home/$i" /etc/passwd > /dev/null
    then
        echo "Restaurando los ficheros del usuario $i..."
        if [ -f /media/usuario/BACKUPS/$i.tar.gz ]
        then
            cd /
            tar -xvf /media/usuario/BACKUPS/$i.tar.gz
            verde "Se han recuperado satisfactoriamente los ficheros..."
            amarillo "-------------"
            echo ""
        else
            rojo "El usuario $i no tiene una copia de seguridad realizada..."
            amarillo "-------------"
            echo ""
        fi
    else
    rojo "El usuario $i no existe en el sistema..."
    amarillo "-------------"
    echo ""
    fi
done