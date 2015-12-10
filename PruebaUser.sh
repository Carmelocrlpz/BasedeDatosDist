#!/bin/bash
if [$# -eq 2]; then
useradd $1 -d /home/$1 -m -g profesores
cd /home/$1
echo "Bienvenido" > Readme.md
else
echo" XDXDXD "

fi

#para ejecutar el script
#gcc prueba.c -o prueba
#./prueba
