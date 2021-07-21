#Función que permite consultar comandos en linux
import subprocess
def fn_ejecutar_comando(comando):
    getList = subprocess.Popen(comando, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    salida, error = getList.communicate()
    return salida, error

datos, error = fn_ejecutar_comando('ls')
lista_elementos = str(datos).split("\\n")
print(lista_elementos[:-1])

documentos = {}
for element in lista_elementos:
    try:
        f = open(str(element),'r') 
    except Exception as ex:
        print ('No se encuentra el archivo')
    else:
        elem_temp = f.read()
        documentos[element] = elem_temp[:-1]
        #print(documentos)

#for x in resultado
#    if # archivo-entrada.py
#f = open ('APL-CNL-0002.log','r')
#mensaje = f.read()
#print(mensaje)
#f.close()

