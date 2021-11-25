#!/bin/bash
# Autor: u-server
# Fecha:  25/11/2021
# Descripción: Contador de palabras

clear
echo "Contador de palabras"
echo ""
read -p "Introduce una frase: " frase
echo ""
echo $frase | echo "Tu frase tiene un total de" `wc -w` "palabras"