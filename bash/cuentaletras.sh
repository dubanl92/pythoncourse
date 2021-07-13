## PROGRAMA QUE CUENTE LAS LETRAS QUE TIENE UNA FRASE #########################################################

echo 'Escribe la frase a la que quieres contarle las letras: '
read frase
#echo ${#cadena}
echo ${#frase}
modificado=$(echo $frase | tr -d '[[:space:]]')
echo $modificado
echo ${#modificado}
