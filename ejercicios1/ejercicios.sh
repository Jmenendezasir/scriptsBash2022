#!/bin/bash

clear

echo "------------"
echo " EJERCICIOS "
echo "------------"
echo ""
echo "Selecciona tu ejercicio."
echo ""
echo "1. Nombre del equipo y grupo"
echo "2. Backup del directorio HOME"
echo "3. Calculadora"
echo "4. Permisos de lectura"
echo "5. Copiar ficheros .dat y .c"
echo "6. Listado recursivo de un directorio"
echo "7. Comprobar si es fichero o directorio"
echo "8. Comprobar tamaño de un fichero o directorio"
echo "9. Comprimir ficheros del directorio actual"
echo "10. Ordenar el contenido de un fichero."
echo ""
read -p "Selecciona un ejercicio: " EJERCICIO

if [ $EJERCICIO = "1" ]
then
    ./1.sh
fi

if [ $EJERCICIO = "2" ]
then
    ./2.sh
fi

if [ $EJERCICIO = "3" ]
then
    ./3.sh
fi

if [ $EJERCICIO = "4" ]
then
    read -p "Necesito el nombre de un archivo para comprobar sus permisos: " VARIABLE
    ./4.sh $VARIABLE
fi

if [ $EJERCICIO = "5" ]
then
    read -p "Necesito un directorio donde copiar los .dat y .c: " VARIABLE
    ./5.sh $VARIABLE
fi

if [ $EJERCICIO = "6" ]
then
    read -p "Necesito el nombre de un directorio para hacer el listado recursivo: " VARIABLE
    ./6.sh $VARIABLE
fi

if [ $EJERCICIO = "7" ]
then
    read -p "Necesito un nombre para comprobar qué tipo de dato es: " VARIABLE
    ./7.sh $VARIABLE
fi

if [ $EJERCICIO = "8" ]
then
    read -p "¿De qué vas a comprobar el tamaño?: " VARIABLE
    ./8.sh $VARIABLE
fi

if [ $EJERCICIO = "9" ]
then
    echo "No está disponible por este momento..."
    exit
fi

if [ $EJERCICIO = "10" ]
then
    read -p "Introduce un fichero a ordenar: " VARIABLE
    read -p "Introduce un parámetro de orden [-A / -Z]: " VARIABLE2
    ./10.sh $VARIABLE $VARIABLE2
fi

