###Usted hace parte del equipo de censo del gobierno nacional, se le ha pedido crear un
#formulario con las siguientes preguntas, el formulario debe permitir que la persona
#especifique sus datos y luego mostrar en pantalla las respuestas dadas. Habrá
#preguntas que requerirán operaciones por lo que se deberá almacenar y procesar
#los datos involucrados. A continuación, se presentan las preguntas que debe
#contener el formulario, el tipo de dato en él se deben almacenar y si tienen alguna
#operación luego de leer la variable.

dic_vacio["nombre"] = "luis"
dic_vacio["apellido"] = "vasquez"

print(dic_vacio)
# diccionarios de primer nivel
print(dic_vacio["nombre"])


nombre = str(input("Primer nombre: "))
apellido= str(input("Apellido: "))
edad= int(input("Edad: "))
barrio= str(input("Barrio: "))
salariomensual= float(input("Salario mensual: "))
salarioanual=salariomensual*12
alturacm= float(input("Altura en cm: "))
alturam=alturacm/100
print( "Para el estado civil escoger una de las siguientes opciones")
estadocivil= str(input("Estado civil: "))
print(f"La diferencia entre ellos es {numero2 - numero1}.")
nombre

Preguntas:
● Primer nombre: de tipo texto.
● Primer apellido: de tipo texto.
● Edad: de tipo entero.
● Barrio: tipo texto
● Salario mensual deseado: tipo flotante, luego de leer y almacenar el valor se
debe multiplicar por 12 y almacenar en una nueva variable llamada
salario_anual.
● Estatura (en centímetros): tipo flotante, luego de leer y almacenar se debe
convertir a metros y almacenar en una variable llamada estatura_mt
● Estado civil: tipo texto, se debe sugerir en la pregunta que se introduzca una
de las siguientes opciones: Casad@, Divorciad@, Viud@, Solter@, Union
libre, de la respuesta sólo se debe almacenar las 3 primeras letras
● Tiempo destinado estudio curso Python en horas a la semana: tipo entero.
Luego de almacenar este dato se debe multiplicar por 52 y almacenar como
estudio_python_anual
● Cantidad de hij@s: Tipo entero.
● Presupuesto salidas fines de semana: Tipo flotante. Este valor debe
almacenarse y luego se debe multiplicar por 52 y guardar en la variable
salidas_fines_semana
● Computadores en casa: tipo entero
● Nombre mejor amig@: tipo string.
Valores adicionales para calcular:
● Longitud total de caracteres para todas las respuestas,
● Promedio cantidad caracteres por respuesta.
● Concatenar todas las respuestas tipo texto, esto se hace acumulando las
respuestas tipo texto. Luego medir y almacenar la longitud del texto
concatenado.
● Dividir por 3 la longitud total del texto concatenado, esto dará un índice
para traer por partes todo el texto. Imprimir la primera parte, luego
imprimir la parte del medio y finalmente, la tercera parte.
Impresión resumen:
Se espera que con las variables almacenadas arriba se impriman los siguientes
párrafos, note que cada variable se pone entre símbolos de comparación:
<nombre_mejor_amigo>
● La persona encuentada se llama <primer_nombre> <primer_apellido>.
Tiene <edad> años
● Vive en <barrio> y está <estado_civil> para l@s interesed@s.
● Mide <estatura_mt> y tiene <cantidad_hijos>
● Su meta de estudio debe ser <estudio_python_anual> horas al año
● Desea ganar <salario_anual> al año pero se gasta al año en ocio
<salidas_fines_semana>
● Va a instalar Python en <computadores_casa> computadores para estudiar
4. Pruebas
Una vez realizado el formulario, llenar y pedir a un compañero que intercambie de
formulario. Cada pareja validará el correcto funcionamiento del formulario