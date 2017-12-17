#ps14.sh
#Uso del case 
#recibir un parametro 1 2 o 3 y ejecutar la seccion adecuada
if [ $# -ne 1 ]
then
	echo no se ha introducido los  parametros 1, 2 o 3
	exit 1
fi

	OPC=`echo $1 | tr [:upper:] [:lower:]`
	test "$OPC" = "uno" && OPC=1
	test "$OPC" = "dos" && OPC=2
	test "$OPC" = "tres" && OPC=3

	case $OPC in
	1)
	echo has elegido \"uno\"
	;;
	2)
	echo has el quieres hacer dos cosas
	;;
	3)
	echo prueba del case
	;;
	*) echo Para todo lo demas mastercard
		;;
	esac
