#!/bin/bash
# Autor: u-server
# Fecha:  05/11/2021
# Descripción: Comprobar un directorio

clear

read -p "¿Qué directorio quieres comprobar...? " DIRECTORIO

test -d $DIRECTORIO && echo "El directorio $DIRECTORIO existe :)" || echo "El directorio $DIRECTORIO no existe :("
