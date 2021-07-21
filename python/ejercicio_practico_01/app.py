nombre = str(input("Primer nombre: "))
print (len(nombre) - nombre.count(' '))

apellido= str(input("Apellido: "))
print (len(apellido) - apellido.count(' '))

edad= int(input("Edad: "))
print (len(str(edad)))

barrio= str(input("Barrio: "))
print (len(barrio) - barrio.count(' '))

salariomensual= int(input("Salario mensual: "))
print (len(str(salariomensual)))

salario_anual=salariomensual*12
alturacm= int(input("Altura en cm: "))
print (len(str(alturacm)))

alturam=alturacm/100
print("Escoger entre las siguientes opciones:")

estado_civil= str(input("Casad@, Divorciad@, Viud@, Solter@, Union libre: "))
print (len(estado_civil) - apellido.count(' '))

tiempocurso = int(input("Tiempo destinado estudio curso Python en horas a la semana: "))
print (len(str(tiempocurso)))
estudio_python_anual = tiempocurso * 52

hijos = int(input("Cantidad de hijos: "))
print (len(str(hijos)))

presupuestofinde = float(input("Presupuesto fin de semana: "))
print (len(str(presupuestofinde)))

salidas_fines_semana = presupuestofinde * 52
computadores_casa = int(input("Numero de computadores en la casa: "))
print (len(str(presupuestofinde)))

nombremejoramigo = str(input("Nombre del mejor amig@: "))
print (len(nombremejoramigo) - nombremejoramigo.count(' '))

concatenar = nombre + apellido + barrio + estado_civil + nombremejoramigo
sumaconcatenar = len(concatenar) - concatenar.count (' ')
indice= int(sumaconcatenar/3)
print(" La suma de Concatenar es " + str(sumaconcatenar))

print("La persona encuestada se llama " + nombre.lower.capitalize() + " " + apellido.lower.capitalize())
print("Vive en " + barrio.title() + " y esta " + estado_civil.capitalize() + " para l@s interesed@s")
print("La persona mide "+ str(alturam) + " m y tiene " + str(hijos) + " hijos")
print("Su meta de estudio debe ser " + str(estudio_python_anual) + " horas al año")
print("Desea ganar " + str(salario_anual) + " al año pero se gasta al año en ocio " + str(salidas_fines_semana))
print("Va a instalar python en " + str(computadores_casa) + " computadores para estudiar")

