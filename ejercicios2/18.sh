#!/bin/bash
# Autor: u-server
# Fecha:  25/11/2021
# Descripción: Mover todos los ficheros pasados por parámetro

clear

for i in $@
do
    mv $i ./backup
done
