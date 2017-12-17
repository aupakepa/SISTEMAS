#!/bin/sh
#eje703.sh
#Script que liste el contenido de un fichero con tres parametros posicionales
#primero obligatorio nombre fichero Comprobar existencia y permisos si no existe error 1
#Segundo listar desde esta linea no obligatorio y si no no es necesario 3º parametro
#listar hasta esta linea
FICHERO=$1
LINEAS=`cat $1 | wc -l`

if [ -z $2 ]
then
	INICIO=1
else
	INICIO=$2
fi
if [ -z $3 ]
then
	FIN=$LINEAS
else
	FIN=$3
fi

if [ $FIN -lt $INICIO ]
then
	echo error el parametro 3 es menor que el dos
	exit 3
elif [ $FIN -gt $LINEAS -o $INICIO -gt $LINEAS ]
then
	echo el inicio o el fin  es mayor que el numero de lineas totales
	exit 3
elif [ ! -s $FICHERO ]
then
	echo el fichero no existe o no tiene contenido
	exit 1
elif [ ! -r $FICHERO ]
then
	echo el usuario no tiene permiso de lectura
else
	INICIO=`expr $INICIO - 1`
	FIN=`expr $LINEAS - $FIN + 1`
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
