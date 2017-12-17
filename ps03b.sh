#Uso del CONDICIONAL COMPLETO
#Leer un dos numeros por teclado y mirar cual es mayor
echo "introducir un numero por teclado"
read NUM1
echo "introducir otro numero por teclado"
read NUM2

if [ $NUM2 -gt $NUM1 ]
   then
	   echo el segundo es mayor que el primero
elif [ $NUM2 -lt $NUM1 ]
   then
    echo $NUM2 es menor que $NUM1   
else
    echo ambos numeros son iguales
fi
