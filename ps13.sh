#ps13.sh
#!/bin/sh
#mostrar el contenido de un fichero introducido como parametro
#comprobar que existe con test - f mostrar solo los 20 primeros caracteres
FICHERO=$1
CHAR=$2
if [ ! -f $1 ]
then
	echo el fichero $1 no existe
	exit 1
elif [ ! -r $1 ]
then 
	echo No tienes permiso de lectura en el fichero $1
	exit 2
elif [ ! -s $1 ]
then
	echo No tiene contenido el fichero
	exit 3
fi
	while 
		read LINEA
	do 
		CONT=`expr $CONT + 1`
		CLINEA=`echo $LINEA | cut -c1-$CHAR`
		echo $CONT.- $CLINEA
		shift
	done < $1

