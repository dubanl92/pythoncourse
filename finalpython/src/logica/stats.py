import subprocess

def fn_ejecutar_comando(comando):
    getList = subprocess.Popen(comando, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    salida, error = getList.communicate()
    return salida, error

def fn_arreglar_lista(lista_elemento):
    lista_elemento=lista_elemento[:-1]    #### Guardo la lista sin el ultimo elemento que es basura
    primer_valor=lista_elemento[0]      #### Extraigo el primer valor de la lista
    primer_valor=primer_valor[3:]     #### Elimono los primeros caracteres del string que son basura
    lista_elemento.pop(0)     #### Elimino el primer valor de la lista
    lista_elemento.append(primer_valor)     #### Agrego la variable primer_valor como el ultimo elemento de la lista
    return lista_elemento

def generar_lista_keys (proyecto,diccionario):
    new_lista=[]  #GENERAR NUEVO DICCIONARIO A PARTIR DE UN DICCIONARIO EXISTENTE TENIENDO EN CUENTA EL VALOR DE UNA VARIABLE
    for k,v in diccionario.items():
        if proyecto in k:
            new_lista.append(k) # GENERO UNA LISTA CON SOLO VALORES REPETIDOS DEL PROYECTO
    return new_lista

def generar_lista_values (estado,diccionario):
    new_lista=[]  #GENERAR NUEVO DICCIONARIO A PARTIR DE UN DICCIONARIO EXISTENTE TENIENDO EN CUENTA EL VALOR DE UNA VARIABLE
    for k,v in diccionario.items():
        if estado in v:
            new_lista.append(v) # GENERO UNA LISTA CON SOLO VALORES REPETIDOS DEL ESTADO 
    return new_lista

def resultados_estado (diccionario):
    estado=('KILL','WARNING','UNKNOW','EXCELENT','GOOD')
    for y in estado:
        print("Se ha generado {} archivos del estado: {}".format(len(generar_lista_values(y,diccionario)),y)) ## IMPRIMO LA SUMA DE LA LISTA POR CADA ESTADO
        
def resultados_proyecto (diccionario):
    proyecto=('MRS','ORB','CNL','UNK')
    for y in proyecto:
        print("Se ha generado {} archivos del proyecto: {}".format(len(generar_lista_keys(y,diccionario)),y)) ## IMPRIMO LA SUMA DE LA LISTA POR CADA PROYECTO

def buscar_proyecto_estado (proyecto,estado,diccionario):
    new_diccionario={}  #GENERAR NUEVO DICCIONARIO A PARTIR DE UN DICCIONARIO EXISTENTE TENIENDO EN CUENTA EL VALOR DE UNA VARIABLE
    for k,v in diccionario.items():
        if (estado in v and proyecto in k) :
            new_diccionario[k] = v
    return new_diccionario

def resultados(diccionario):
    estado=('KILL','WARNING','UNKNOW','EXCELLENT','GOOD')
    proyecto=('MRS','ORB','CNL','UNK')
    for x in proyecto:      #### SE REALIZA UN RECORRIDO POR PROYECTO Y LUEGO POR ESTADO PARA ENCONTRAR LOS VALORES
        for y in estado:
            print("Se ha generado {} del proyecto: {}, con el estado: {}".format(len(buscar_proyecto_estado(x,y,diccionario)),x,y))

def fn_generar_dict(lista_elementos):  #GENERAR UN DICCIONARIO A PARTIR DE LISTA DE ELEMENTOS EN LA CARPETA
    documentos = {}
    for element in lista_elementos:
        try:
            f = open(str(element),'r')              #####ELEMENTO ES EL NOMBRE DEL ARCHIVO, ABRE ESE ARCHIVO Y GUARDA EL VALOR EN F
        except Exception as ex:
            print ('No se encuentra el archivo')
        else:
            elem_temp = f.read()             #LEE EL VALOR DE  F y lo GUARDO EN ELEMETO TEMPORAL
            documentos[element] = elem_temp[:-1]            #GENERO UN DICCIONARIO DONDE LA LLAVE ES EL NOMBRE DEL ARCHIVO Y EL VALOR ES EL VALOR QUE ESTA DENTRO DEL ARCHIVO
    return documentos
