#!/bin/bash
# Autor: u-server
# Fecha:  25/11/2021
# Descripción: Hacer un ping a todas las máquinas de nuestro sistema.

clear

for i in 192.168.7.157 localhost 8.8.8.8
do
    ping -c 4 $i
done