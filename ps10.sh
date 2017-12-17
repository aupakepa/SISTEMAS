#ps10.sh
?
# Recorrer los parametros posicionales con un for
echo
echo $0
echo $*
echo $@
echo $#
CONT=1
for VAR
 do 
	 echo parametro posicional $CONT : $VAR
	 CONT=`expr $CONT + 1`
done
