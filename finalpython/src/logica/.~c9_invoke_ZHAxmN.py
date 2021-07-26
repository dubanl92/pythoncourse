#Función que permite consultar comandos en linux
import subprocess


def fn_ejecutar_comando(comando):
    getList = subprocess.Popen(comando, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    salida, error = getList.communicate()
    return salida, error

def fn_arreglar_lista(lista_elemento):
    #### Guardo la lista sin el ultimo elemento que es basura
    lista_elemento=lista_elemento[:-1]
    #### Extraigo el primer valor de la lista
    primer_valor=lista_elemento[0]
    #### Elimono los primeros caracteres del string que son basura
    primer_valor=primer_valor[3:]
    #### Elimino el primer valor de la lista
    lista_elemento.pop(0)
    #### Agrego la variable primer_valor como el ultimo elemento de la lista
    lista_elemento.append(primer_valor)
    return lista_elemento

def buscar_proyecto (lista_proyectos,diccionario):
    for k,v in diccionario.items():
        if 'MRS' in k:
            print("MRS : {}".format( len(v)))
        elif 'CNL' in k:
            print("CNL : {}".format( len(v)))
        elif 'ORB' in k:
            print("ORB : {}".format( len(v)))
        else:
            print("UNK : {}".format( len(v)))

def fn_generar_dict(lista_elementos):
    documentos = {}
    for element in lista_elementos:
        try:
            #####ELEMENTO ES EL NOMBRE DEL ARCHIVO, ABRE ESE ARCHIVO Y GUARDA EL VALOR EN F
            f = open(str(element),'r') 
        except Exception as ex:
            print ('No se encuentra el archivo')
        else:
            #LEE EL VALOR DE  F y lo GUARDO EN ELEMETO TEMPORAL
            elem_temp = f.read()
            #GENERO UN DICCIONARIO DONDE LA LLAVE ES EL NOMBRE DEL ARCHIVO Y EL VALOR ES EL VALOR QUE ESTA DENTRO DEL ARCHIVO
            documentos[element] = elem_temp[:-1]
    return documentos


def nuevo_diccionario(k,v):
    nuevo_diccionario={}
    for k,x
'''



#print(lista_elemento[:-1])
x.append(y)
print(x[-1])
salida=fn_generar_dict(lista_elemento)
#print(salida)

#for x in resultado
#    if # archivo-entrada.py
#f = open ('APL-CNL-0002.log','r')
#mensaje = f.read()
#print(mensaje)
#f.close()

'''





'''

from finalpython.src.utilities.utils import fn_ejecutar_comando
import sys

sys.path.append('/home/ec2-user/environment/python')

datos = fn_ejecutar_comando('pwd')
lista_elementos = str(datos).split("\\n")
print(lista_elementos[:-1])

#class Prueba:
#    def __logica_programa(self, lista_elementos):
#        documentos = {}
#        for element in lista_elementos:
#            f = open(str(element),'r') 
#            elem_temp = f.read()
#            documentos[element] = elem_temp[:-1]
#        return documentos
    
'''