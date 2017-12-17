#ps12.sh
#Uso del test -s para comprobar que se encuentran elementos con find
#Se buscara el elemento introducido como parametro posicional y se indicara si existe alguno o no
if [ $# -eq 0 ]
then
	echo no se ha introducido parametros
	exit 1
fi

while [ $# -ne 0 ]
do
	find / -type f -name $1 >salida 2>/dev/null
	if [ ! -s salida ]
	  then
	  echo el fichero $1 no se ha encontrado
        else 
	   CANTIDAD=`cat salida  | wc -l` 
	   echo se han encontrado $CANTIDAD ficheros del archivo $1
	fi
shift 	
done
