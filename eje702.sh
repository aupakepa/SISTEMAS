#!/bin/sh
#Eje702.sh
#El script recibira el nombre de un fichero o archivo y lo buscara
#Debe haber al menos tener el tipo si no mostrara un error 1 si no se introduce el nombre buscara todos los de ese tipo
NOMBRE="$2"
TIPO=`echo $1 | tr [:upper:] [:lower:]`

if [ $# -lt 1 ]
then 
	echo no se han introducido el tipo de elemento
	exit 1
elif [ $TIPO != f -a $TIPO != d -a $TIPO != t ]
then
	echo debe indicarse el tipo f d ò t
	exit 3
elif [ $# -gt 2 ]
then
	echo se han introducido mas parametros de los permitidos
fi
VAR=$NOMBRE
for VAR
do
find / -type $TIPO -name $VAR 2>/dev/null -exec ls -la {} \;
done
