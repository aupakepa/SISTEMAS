#!/bin/sh
#eje703.sh
#Script que liste el contenido de un fichero con tres parametros posicionales
#primero obligatorio nombre fichero Comprobar existencia y permisos si no existe error 1
#Segundo listar desde esta linea no obligatorio y si no no es necesario 3º parametro
#listar hasta esta linea
FICHERO=$1
LINEAS=`cat $1 | wc -l`
INICIO=1
FIN=`expr $LINEAS - 1`
if [ $3 -lt $2 ]
then
	echo error el parametro 3 es menor que el dos
	exit 3
elif [ $2 -gt $LINEAS -o $3 -gt $LINEAS ]
then
	echo el inicio de las lineas es mayor que el numero de lineas totales
	exit 3
elif [ ! -s $FICHERO ]
then
	echo el fichero no existe o no tiene contenido
	exit 1
elif [ ! -r $FICHERO ]
then
	echo el usuario no tiene permiso de lectura
else
	INICIO=$2
	FIN=$3
	cat $FICHERO | tail -n +$INICIO | head -n -$FIN 2>/dev/null >salida
	FICHERO=./salida	
	CONT=$INICIO
	while
		read LINEA
	do 
		CONT=`expr $CONT + 1`
	PLINEA=`echo $CONT .- $LINEA | cut -c1-15`
	echo $PLINEA
	done < $FICHERO
fi	
