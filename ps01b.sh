#Uso del TR con variable
#Leer un texto por teclado y mostrarlo
echo "introduce un texto"
read TECLADO
MAYUS=`echo $TECLADO | tr [:lower:] [:upper:]`
echo esto es en mayusculas :$MAYUS
echo resto es en minusculas:  `echo $MAYUS | tr [:upper:] [:lower:]`
MAYUS=`echo $MAYUS | tr -s [AL]`
echo $MAYUS
