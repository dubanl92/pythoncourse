############################### CALCULADORA ##########################################
source utils.sh

if [ "$operacion" -le 4 ]; then
    case $operacion in
      1) suma	;;
      2) resta ;;
      3) multiplicacion ;;
      4) division ;;
    esac
else
	echo "No es una opcion valida de la calculadora"
fi

