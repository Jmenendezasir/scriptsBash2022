#!/bin/bash
# Autor: u-server
# Fecha:  25/11/2021
# Descripción: Realizar operaciones de red indicadas.

clear
echo "------------------"
echo "Operaciones de red"
echo "------------------"
echo ""
echo "1. Ver interfaces de red"
echo "2. Ver tablas de ruta"
echo "3. Ver tabla arp"
echo "4. Mostrar puertos abiertos"
echo "5. Salir"
echo ""

read -n 1 -p "Selecciona una opción... " OPCION
case $OPCION in
    1)
        echo ""
        ip addr list
        ;;
    2)
        echo ""
        ip route show
        ;;
    3)
        echo ""
        ip neighbor show
        ;;
    4)
        echo ""
        nmap localhost
        ;;
    5)
        echo "Saliendo.."
        sleep .2
        exit 0
        ;;
    *)
        echo ""
        echo "Opción no válida"
        echo ""
        ./11.sh
        ;;
esac