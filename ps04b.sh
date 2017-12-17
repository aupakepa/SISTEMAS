#determinar el mayor de tres parametros posicionales

if [ $# -ne 3 ]
then
	echo El numero de parametros no es 3
	exit
fi
if [ $1 -gt $2 ]
then 
MAYOR=$1
POSICION=1
else
MAYOR=$2
POSICION=2
fi
if [ $3 -gt $MAYOR ]
then 
MAYOR=$3
POSICION=3
fi
echo el mayor es el parametro $POSICION CON EL VALOR $MAYOR

