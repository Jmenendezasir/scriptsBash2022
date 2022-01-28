#!/bin/bash

source colores.sh

clear

verde "________________________"
verde "~~~~~~~~~~~~~~~~~~~~~~~~"
verde "  BACKUP DE USUARIOS    "
verde "~~~~~~~~~~~~~~~~~~~~~~~~"
verde "________________________"
echo ""

read -n1 -p "Pulsa una tecla para hacer una copia de seguridad de los usuarios..."

for i in $@
do
    if grep "/home/$i" /etc/passwd > /dev/null
    then
        amarillo "--------------"
        echo ""
        if [ -d /home/$i ]
        then
        echo ""
            if [ -f /media/usuario/BACKUPS/$i.tar.gz ]
            then
                amarillo "Eliminando la copia previa de $i..."
                rm /media/usuario/BACKUPS/$i.tar.gz
                echo "Creando una copia del usuario $i..."
                tar cvzfp /media/usuario/BACKUPS/$i.tar.gz /home/$i
                if [ -f /media/usuario/BACKUPS/$i.tar.gz ]
                then
                    verde "Se ha creado la copia de seguridad satisfactoriamente..."
                else
                    rojo "Ha ocurrido un problema al crear la copia de seguridad..."
                fi
            else
                echo "Creando una copia del usuario $i..."
                tar cvzfp /media/usuario/BACKUPS/$i.tar.gz /home/$i
                if [ -f /media/usuario/BACKUPS/$i.tar.gz ]
                then
                    verde "Se ha creado la copia de seguridad satisfactoriamente..."
                else
                    rojo "Ha ocurrido un problema al crear la copia de seguridad..."
                fi
            fi
        else
            echo "Creando una copia del usuario $i..."
            rojo "El usuario $i no tiene ficheros..."
            amarillo "--------------"
            echo ""
        fi
    else
        echo "Creando una copia del usuario $i..."
        rojo "$i no es un usuario reconocido del sistema..."
        echo ""
    fi
done