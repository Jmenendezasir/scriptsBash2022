#!/bin/bash

source ./colores.sh

clear

azul "--------------------"
azul "    IMPORTACIÓN     "
azul "    DE USUARIOS     "
azul "    A MySQL (v1)    "
azul "--------------------"
echo ""

read -n1 -p "Pulsa una tecla para comenzar..."
echo ""

if [ `which mysql` ]
then
    amarillo "MySQL está instalado en el equipo..."
else
    rojo "MySQL no está instalado en el equipo..."
    amarillo "Instalando..."
    sudo apt-get install -y mysql-server
    if [ `which mysql` ]
    then
        echo "Creando la base de datos usuario..."
        sudo mysql -u root -p -e < MySQL.SQL
        verde "MySQL se ha instalado satisfactoriamente..."
    else
        rojo "Ha ocurrido un error al instalar MySQL..."
    fi
fi

if [ -f ./usuarios.txt ]
then
    amarillo "Actualizando la lista de usuarios..."
    rm ./usuarios.txt
    touch ./usuarios.txt
else
    echo "Se va a crear una nueva lista de usuarios..."
    amarillo "Creando lista de usuarios..."
    touch ./usuarios.txt
fi


listausuarios=`awk -F ":" '$3 > 1000 { print $1 ":" $2 ":" $3 }' /etc/passwd`
for i in $listausuarios
do
    id=$(cat /etc/passwd | grep $i | cut -f3 -d ":")
    nombre=$(cat /etc/passwd | grep $i | cut -f1 -d ":")
    vergrupos=`groups $nombre`
    grupo=`echo $vergrupos | awk -F " : " '{ print $2 }'`
    echo "$id:$nombre:$grupo" >> usuarios.txt
done

if [ -f ./usuarios.txt ]
then
    verde "Se han exportado correctamente los usuarios en [`pwd`]"
else
    rojo "Ha ocurrido un problema al exportar los usuarios..."
    exit 0
fi

echo "Creando las consultas SQL..."
mysql -u usuario usuarios -e 'SELECT uid FROM usuarios' > consulta.SQL

for fila in $(cat ./usuarios.txt)
do
    uidSQL=$(cat ./usuarios.txt | grep $fila | cut -f1 -d ":")
    usuarioSQL=$(cat ./usuarios.txt | grep $fila | cut -f2 -d ":")
    grupoSQL=$(cat ./usuarios.txt | grep $fila | cut -f3 -d ":")
    if grep $uidSQL ./consulta.SQL > /dev/null
    then
        amarillo "El usuario $usuarioSQL ya existe en la base de datos..."
        amarillo "________"
    else
        echo "Insertando a $usuarioSQL en la base de datos..."
        echo "INSERT INTO usuarios VALUES ('$uidSQL','$usuarioSQL','$grupoSQL');" > usuario.SQL
        mysql -u usuario usuarios < usuario.SQL

        mysql -u usuario usuarios -e 'SELECT uid FROM usuarios' > consulta.SQL
        if grep $uidSQL ./consulta.SQL > /dev/null
        then
            verde "El usuario $usuarioSQL se ha importado correctamente en la base de datos..."
            amarillo "________"
        else
            rojo "Ha ocurrido un error al importar al usuario en la base de datos..."
        fi
    fi
done

