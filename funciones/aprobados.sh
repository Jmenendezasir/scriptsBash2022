#!/bin/bash
# Autor: u-server
# Fecha:  19/11/2021
# Descripción: Pasar un listado de notas y determinar quién ha aprobado

clear
aprobados=0

for i in $*
do
    if [ $i -gt 10 -o $i -lt 0 ]
    then
        echo "Se ha introducido una nota de forma incorrecta."
        echo "USO: Introducir una nota comprendida entre 0 y 10"
        exit
    fi
    if [ $i -ge 5 ]
    then
        let aprobados=aprobados+1
    sleep .1
    fi
done

if [ $aprobados -eq 1 ]
then
    echo "Hay un alumno aprobado..."
else
    echo "Hay $aprobados alumnos aprobados"
fi