#ps10.sh
?
# Recorrer los parametros posicionales con un for
echo
echo $0
echo $*
echo $@
echo $#
CONT=1
while [ $# -gt 0 ]
 do 
	 echo parametro posicional $CONT : $1
	 CONT=`expr $CONT + 1`
	 shift
done
