#!/bin/sh
#Eje701.sh
#El script recibira parametros posicionales y mostrara numerados los tres primeros y los tres ultimos
#Debe haber al menos 6 si no mostrara un error 1
if [ $# -lt 6 ]
then 
	echo no se han introducido 6 o mas parametros posicionales
	exit 1
fi

CONT=0
FIN=`expr $# - 3`
echo numero de parametros introducidos: $#
echo -------------------------------------
for VAR
do 
	CONT=`expr $CONT + 1`
	if [ $CONT -le 3 ]
	then
		echo Parametro $CONT : $VAR
	elif [ $CONT -gt $FIN ]
	then
		echo Parametro $CONT : $VAR
	elif [ $CONT -eq 4 -a $# -ne 6 ]
	then
		echo ...........
	fi
done
