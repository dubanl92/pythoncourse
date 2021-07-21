diccionario={'APL-CNL-00014.log': 'KILL', 'APL-CNL-00015.log': 'WARNING', 'APL-CNL-00017.log': 'UNKNOW', 'APL-CNL-00018.log': 'GOOD', 'APL-CNL-00025.log': 'EXCELENT', 'APL-CNL-0002.log': 'WARNING', 'APL-CNL-00030.log': 'KILL', 'APL-CNL-0003.log': 'WARNING', 'APL-CNL-0009.log': 'UNKNOW', 'APL-MRS-00011.log': 'GOOD', 'APL-MRS-00020.log': 'GOOD', 'APL-MRS-00021.log': 'EXCELENT', 'APL-MRS-00024.log': 'UNKNOW', 'APL-MRS-00026.log': 'EXCELENT', 'APL-MRS-00028.log': 'GOOD', 'APL-ORB-00019.log': 'KILL', 'APL-ORB-00027.log': 'WARNING', 'APL-ORB-00029.log': 'EXCELENT', 'APL-ORB-0004.log': 'EXCELENT', 'APL-ORB-0006.log': 'WARNING', 'APL-UNK-00010.log': 'GOOD', 'APL-UNK-00012.log': 'WARNING', 'APL-UNK-00016.log': 'KILL', 'APL-UNK-0001.log': 'UNKNOW', 'APL-UNK-00022.log': 'WARNING', 'APL-UNK-00023.log': 'EXCELENT', 'APL-UNK-0005.log': 'KILL', 'APL-UNK-0007.log': 'KILL', 'APL-UNK-0008.log': 'GOOD'}
#print(diccionario)

for x in diccionario.values():
  print(x)

for key,value in diccionario.items():
    print("Archivo : {}, suma de valores: {}".format(key, len(str(value))))
