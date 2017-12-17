#Encontrar ficheros introducidos con parametros posicionales con el for
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
	if [ $CANTIDAD -eq 0 ]
	   then echo el fichero $VAR no se ha encontrado
	else
	    echo se han encontrado $CANTIDAD ficheros con el  nombre $VAR
	fi
done
