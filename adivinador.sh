#!/bin/bash
aleatorio=$(($RANDOM%50+1))
respuesta=60
cont=0
while [$aleatorio -ne $respuesta];
do
let cont=cont+1
if [$cont -gt 10]
then
echo Intentos agotados! Lo sentimos mas suerte para la proxima!
exit
else
read -p "Cual es el numero escondido? 1-50: "respuesta
echo Tu numero de intentos $cont de 10
if [$aleatorio -lt $respuesta] 
then
 echo El numero escondido es menor a $respuesta 
elif [$aleatorio -gt $respuesta]
then
 echo El numero escondido es mayor a $respuesta
 fi
fi
done

echo Acertaste, el numero es $aleatorio , felicidades

