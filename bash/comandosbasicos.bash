1. principales comandos
 * ls ll
 * cat
 * pwd
 * rm
 * mkdir
 * grep
 * awk
 * editor vi (durante el curso)

2. uso de echo
3. asignacion de variables 
	* simples 
		- texto
		- numericas
	* arreglos
		- arreglos index
		- arreglos asociativos
4. redireccion 
	* errores
	* archivos
5. creando shells
	* parametros y argumentos especiales
	* almacenando comandos en variables
	* sumando y concatenando valores
	* validaciones strings
	* validaciones numeros
	* validaciones archivos y directorios
	* if/elif else
	* ciclo for
	* ciclo while
	* funciones 

6. bonus(si alcanzamos)
	* trabajando bash orientado a objetos
	* uso de load properties en bash
	* debug


0. comentarios
# SIMPLE
<< 'MULTILINE-COMMENT'
    Everything inside the
    HereDoc body is
    a multiline comment
MULTILINE-COMMENT

1. declaracion de variables

 - VALORTEXTO="valor" #texto
 - VALORNUMERO=1 #numeros

 * array basados en indice
        - alterna=(1 2 3 4 5)  # declaracion de array
        - echo ${alterna[3]}   # muestra la posición 4
        - operaciones basicas : 
        - echo ${alterna[@]}   # muestra los valores del array
        - echo ${alterna[*]}   # muestra los valores en forma de string
        - echo ${!alterna[@]}  # muestra el indice de los vectores
        - alterna[10]=888      # asignacion de valor en una posicion
        - echo ${alterna:0:3}  # operacion de rango
        - echo ${alterna[@]:3} # muestra la lista a partir de un rango
        - arrays asociativos
        - declare - A dic      # declaracion de array asociativo
        - dic[luis]=21         # asignacion de valor con llave
        - echo ${dic[luis]}    # imprimir valor llave especifica
        - echo ${dic[@]}       # imprimir todos los valores
        - echo ${!dic[@]}      # imprimir llaves   

    Nota : los valores funcionan de rangos es sobre el valor

2.salidas 

	redirecciones standar
		mkdir config 2> /dev/null

	redireccion archivos
		echo "saludo" >  cedesistemas.log  # salida y siempre almacena el ultimo resultado
		echo "saludo" >> cedesistemas.log # concatena 
	
	 
3. uso de shells
	Argumentos Especiales
		$* muestra los valores del argumento en una cadena string
		$@ muestra los valores del argumento
		$# muestra la cantidad de argumentos
		$? muestra el estado en codigo de una ejecucion de comando
	
	almacenando comandos en variables
		ruta=$(pwd)
	
	sumando y concatenando valores 
		suma=1
		suma=((suma +1))
		let NUM=$NUM+1
		nombre=luis
		nombre=$nombre' 'fernando
	
	validaciones strings
		cadena1 = cadena2	cadena1 es igual a cadena2
		cadena1 != cadena2	cadena1 no es igual a cadena2
		cadena1 < cadena2	cadena1 es menor que cadena2
		cadena1 > cadena 2	cadena1 es mayor que cadena 2
		-n cadena1		    cadena1 no es igual al valor nulo (longitud mayorque 0)
		-z cadena1		    cadena1 tiene un valor nulo (longitud 0)
	
	validaciones numeros
		x -lt y			x menor que y
		x -le y			x menor o igual que y
		x -eq y			x igual que y
		x -ge y			x mayor o igual que y
		x -gt y			x mayor que y
		x -ne y			x no igual que y
	
	validaciones archivos y directorios
		-d fichero		fichero existe y es un directorio
		-e fichero		fichero existe
		-f fichero		fichero existe y es un fichero regular (no un directorio, u otro tipo de fichero especial)
		-r fichero		Tienes permiso de lectura en fichero
		-s fichero		fichero existe y no esta vacio
		-w fichero		Tienes permiso de escritura en fichero
		-x fichero		Tienes permiso de ejecucion en fichero (o de busqueda si es un directorio)
		-O fichero		Eres el dueño del fichero
		-G fichero		El grupo del fichero es igual al tuyo.
		fichero1 -nt fichero2	fichero1 es mas reciente que fichero2
		fichero1 -ot fichero2	fichero1 es mas antiguo que fichero2
	if/elif else
	
		if [ "aa" == "b" ]; then
			echo "no es igual"
		elif [ "bb" == "bb" ]
			echo "alguna accion"
		else
			echo "es igual"
		fi
	
	ciclo for
		
		#iteracion de variable
		lista=(a b c d e)
		for index in ${lista[@]} ; do
				echo "valor : $index"
		done
		
		#iteracion de archivo
		for index in $(cat cedesistemas.log); do
				echo "valor : $index"
		done

	ciclo while
		NUM=0

		while [ $NUM -le 10 ]; do
			echo "\$NUM: $NUM"
			let NUM=$NUM+1
		done

		nota : "break" termina el bucle y "continue"  sigue a la siguiente iteracion

	
	
	funciones 	
		a(){
		local parametro=$1
		echo "funcion a $parametro"
		}

		function b(){
		echo "funcion b"
		}

		a "cedesistemas"
		b

