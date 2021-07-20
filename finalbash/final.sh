#!/bin/bash

echo "@@  @@  @@@@@@  @@@@@@  @@@@@@"
echo "@@@ @@  @@  @@  @@      @@  @@"
echo "@@ @@@  @@@@@@  @@@@@@  @@@@@@" 
echo "@@  @@  @@  @@      @@  @@  @@"
echo "@@  @@  @@  @@  @@@@@@  @@  @@"
echo 
echo Bienvenidos al programa principal de la Nasa:
echo
echo "@@@@@@  @@@@@@  @@@@@@  @@      @@@@@@   @@  @@"
echo "@@  @@  @@  @@  @@  @@  @@      @@  @@   @@  @@"
echo "@@@@@@  @@@@@@  @@  @@  @@      @@  @@   @@  @@" 
echo "@@  @@  @@      @@  @@  @@      @@  @@   @@  @@"
echo "@@  @@  @@      @@@@@@  @@@@@@  @@@@@@   @@  @@"
echo
echo Desarrollado por Duban Londoño perez cc 1037622598
echo
echo Este programa consiste  de 3 proyectos ambiciosos
echo Orbit: Moderniza flota de satelites
echo Colony: Para colonizar la luna
echo Mars: Realizar turismo en Marte

###### GENERO VARIABLES PARA LAS FECHAS ############
DIA1=`date +"%d-%m-%Y"`
DIA2=''
BK="bkmissions-`date +"%d%m%Y"`" 

###### AGREGO ESTA VARIABLE POR QUE EN CLOUD 9 NO EXISTE LA RUTA ###########
RUTA=environment/pythoncourse/finalbash
HOME=${HOME}/${RUTA}

###### GENERO VARIABLES CON LAS RUTAS QUE SE VAN A CREAR #################
RUTA1=${HOME}/takeoff-mission/devices
RUTA2=${HOME}/takeoff-mission/logsapolo11/${DIA1}

###### VARIABLES QUE TIENE EL VALOR DE LOS ESTADOS Y PROYECTOS ##################
estados=(UNKNOW EXCELENT GOOD WARNING KILL)
proyectos=(ORB CNL MRS UNK)

mkdir -p ${HOME}/takeoff-mission/{devices,logsapolo11,config,stats} 
mkdir -p ${HOME}/takeoff-mission/devices
mkdir -p ${HOME}/takeoff-mission/logsapolo11/{${DIA1},${BK}}

sudo groupadd nasa 2>> ${RUTA1}/error.log
sudo useradd -G nasa ORB 2>> ${RUTA1}/error.log
sudo useradd -G nasa CNL 2>> ${RUTA1}/error.log
sudo useradd -G nasa MRS 2>> ${RUTA1}/error.log
sudo useradd -G nasa UNK 2>> ${RUTA1}/error.log

echo $DIA1, $DIA2, $BK, $RUTA, $HOME, $RUTA1, $RUTA2,$estados

if [ "$DIA1" != "$DIA2" ]; then

   for i in {1..100};
     do
     
       estado=`echo ${estados[$(($RANDOM%5))]}`
       proyecto=`echo ${proyectos[$(($RANDOM%4))]}`
	   echo $estado > ${RUTA2}/APL-$proyecto-000$i.log 2>> ${RUTA1}/error.log
       chmod 777 ${RUTA2}/APL-$proyecto-000$i.log 2>> ${RUTA1}/error.log
       sudo chown $proyecto:nasa  ${RUTA2}/APL-$proyecto-000$i.log 2>> ${RUTA1}/error.log
       
     done
   DIA2=`date +"%d-%m-%Y"`
fi