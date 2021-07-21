############################### CALCULADORA ##########################################
echo Bienvenido a la calculadora de Duban
echo 'Estas son las operaciones que se puede ejecutar en la calculadora'

calculadora=(Suma Resta Multiplicacion Division)
NUM=1
  for calculadora in ${calculadora[@]};
    do
    echo $NUM $calculadora
    let NUM=$NUM+1
  done

echo 'Escoja una operación digitando el numero correspondiente: '
read operacion
echo 'Por favor ingrese primer valor: '
read num1
echo 'Por favor ingrese segundo valor: '
read num2

  function suma(){
   let sum=$num1+$num2
   echo Resultado es $sum
  }

  function resta(){
   let res=$num1-$num2
   echo Resultado es $res
  }

  function multiplicacion(){
   let mul=$num1*$num2
   echo Resultado es $mul
  }

  function division(){
   let div=$num1/$num2
   echo  "scale=2; Resultado es $div"
  }

