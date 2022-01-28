#!/bin/bash

clear

#declaración

miFuncion() {
    echo "Hola mundo"
}

suma() {
  echo "$1 + $2 =" $(($1+$2))
}

#programa

suma 4 7
suma 8 2
suma 5 1
suma 7 4
suma 2 6
