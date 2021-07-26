import src.logica.stats as stats

##### DEFICIENCIA NO TENGO LA FORMA DE TOMAR LOS DATOS DEL DIA AUTOMATICAMENTE #####
prueba=stats.fn_ejecutar_comando('sh $HOME/environment/pythoncourse/finalbash/final.sh')
print(prueba)
datos = stats.fn_ejecutar_comando('ls $HOME/environment/takeoff-mission/logsapolo11/23-07-2021')
stats.fn_ejecutar_comando('touch $HOME/environment/takeoff-mission/stats/APLSTATS-23-07-2021.log')

lista_elemento = str(datos).split("\\n")
lista_elemento=stats.fn_arreglar_lista(lista_elemento)
salida=stats.fn_generar_dict(lista_elemento)

#stats.resultados_proyecto(salida)
#stats.resultados_estado(salida)
#stats.resultados(salida)
