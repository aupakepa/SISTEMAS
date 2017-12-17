#Uso del CONDICIONAL
#Leer un  por teclado y mirar si es igual a 10
echo "introducir un numero por teclado"
read TECLADO

if [ $TECLADO -eq 10 ]
   then
	   echo el numero es igual a 10
   else
	   echo no es es igual a 10
   fi
