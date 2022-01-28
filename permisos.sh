#!/bin/bash

clear

echo "    /////////////////"
echo "    *  GENERADOR DE *"
echo "    *   PERMISOS    *"
echo "    /////////////////"
echo ""
echo ""

sudo chmod u+x $1
sleep 2
clear
echo "Dando permisos de ejecución..."
echo "0% _______________"
sleep 1
clear
echo "Dando permisos de ejecución.."
echo "63% #######_______"
sleep 2
clear
echo "Dando permisos de ejecución."
echo "98% #############_"
sleep 1
clear
echo "FINALIZADO..."
echo ""
ls -l | grep $1
echo ""
echo ""
