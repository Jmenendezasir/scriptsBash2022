#!/bin/bash
# Repositorio de colores
rojo() {
    echo -e "\e[0;31m$1\e[0m"
}

verde() {
    echo -e "\e[0;32m"$1"\e[0m"
}

azul() {
    echo -e "\e[0;34m"$1"\e[0m"
}

arcoiris() {
    echo -e "\e[0;32m"$1"\e[0m"
    sleep .1
    clear
    echo -e "\e[0;31m"$1"\e[0m"
    sleep .1
    clear
    echo -e "\e[0;33m"$1"\e[0m"
    sleep .1
    clear
    echo -e "\e[0;34m"$1"\e[0m"
    sleep .1
    clear
    arcoiris $1
}