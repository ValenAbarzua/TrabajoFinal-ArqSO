#!/bin/bash
opcion=0
echo "Hola, bienvenido: $USER  "
sleep 3
while [ $opcion -ne 3 ];
do 
echo Elige una opcion del menu
echo 1 Ver la hora actual
echo 2 Ver el clima en Bahia Blanca
echo 3 Salir del menu
read opcion
case $opcion in
 1) echo "La hora actual es $(date +%r)" 
 sleep 3
 ;;
 2) curl wttr.in/Bahia-Blanca?0
 sleep 3
 ;;
 3) echo Elegiste la opcion de salida, adios!
 exit
 ;;
 *) echo Opcion invalida, lo sentimos! 
 exit
 ;;
esac
done

