#!/bin/bash

source colores.sh

clear

if ! [ $(id -u) = 0 ]
then 
    echo "Este usuario no tiene permisos para crear usuarios..."
    echo ""
    read -n1 -p "Pulsa una tecla para salir..."
    exit 1 
fi

amarillo "----------------------"
amarillo " CREACIÓN DE USUARIOS "
amarillo "----------------------"
echo ""
read -n1 -p "Pulsa cualquier tecla para importar los usuarios..."
echo ""

for i in $(cat usuarios.txt)
do
    usuario=`echo $i | cut -f 1 -d ":"`
    grupo=`echo $i | cut -f 2 -d ":"`
    aleatorio=`shuf -i 1000-9999 -n 1`
    contra=$usuario$aleatorio

    if grep $usuario /etc/passwd > /dev/null
    then
        rojo "El usuario $usuario ya existe"
        echo ""
    else
        if ! grep $grupo /etc/group > /dev/null
        then
            rojo "El grupo $grupo no existe..."
            amarillo "Creando el grupo $grupo..."
            groupadd $grupo
            verde "Se ha creado el grupo satisfactoriamente."
            echo "" 
        fi

        echo "Creando el usuario $usuario en el grupo $grupo..."
        useradd $usuario -g $grupo -s /bin/bash -p $contra -d /home/$usuario
        codificada=`echo $contra | base64`
        echo "$usuario -- $grupo -- $codificada" >> usuarios.log
        echo "-------------------------------------" >> usuarios.log
        echo "" >> usuarios.log
        
        if grep $usuario /etc/passwd > /dev/null
        then
            verde "Se ha creado satisfactoriamente el usuario $usuario"
            echo ""
        else
            rojo "Ha ocurrido un error al crear el usuario $usuario"
            echo ""
        fi
    fi
done


read -n1 -p "¿Quieres exportar los usuarios del sistema en un fichero de texto? [s/n] " respuesta
echo ""
if [ $respuesta = "s" ]
then
    if [ -f exportacion.txt ]
    then
        rm exportacion.txt
        amarillo "Se ha eliminado el antiguo fichero de exportación."
    fi

listausuarios=`awk -F ":" '$3 > 1000 { print $1 }' /etc/passwd`

amarillo "Exportando los usuarios del sistema..."
echo ""

for i in $listausuarios
do
    usuariogrupo=`groups $i`
    echo $usuariogrupo | awk -F " : " '{ print $1 ":" $2 }' >> exportacion.txt
done

verde "Se han exportado correctamente los usuarios del sistema..."
echo ""

else
    echo ""
    amarillo "Finalizando..."
    exit 0
fi
