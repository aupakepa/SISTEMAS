#Encontrar ficheros introducidos con parametros posicionales con el for
#y comprobar si existe con el test
# miramos primero que se han introducido parametros
if [ $# -eq 0 ]
then
	echo no se han introducido nombres de archivo
	exit -1
fi

for VAR
do 
	find -type f -name $VAR >salida 2>/dev/null
	CANTIDAD=`cat salida | wc -l`
	if [ ! -s salida ]
	   then echo el fichero $VAR no se ha encontrado
	else
	    echo se han encontrado $CANTIDAD ficheros con el  nombre $VAR
	fi
done
