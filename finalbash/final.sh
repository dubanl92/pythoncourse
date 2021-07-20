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
RUTA1=${HOME}/takeoff-mission/devices/${DIA1}
RUTA2=${HOME}/takeoff-mission/logsapolo11/${DIA1}

###### VARIABLE QUE TIENE EL VALOR DE LOS ESTADOS ##################
estados=(UNKNOW EXCELENT GOOD WARNING KILL)

mkdir -p ${HOME}/takeoff-mission/{devices,logsapolo11,config,stats} #2> /dev/null
mkdir -p ${HOME}/takeoff-mission/devices/{$DIA1},${BK} #2> /dev/null
mkdir -p ${HOME}/takeoff-mission/logsapolo11/${DIA1}

sudo groupadd nasa 2>> ${RUTA2}/error.log
sudo useradd -G nasa orbit 2>> ${RUTA2}/error.log
sudo useradd -G nasa colony 2>> ${RUTA2}/error.log
sudo useradd -G nasa mars 2>> ${RUTA2}/error.log
#sudo useradd -G nasa unknow 2> ${RUTA2}/error.log

echo $DIA1, $DIA2, $BK, $RUTA, $HOME, $RUTA1, $RUTA2,$estados

#if [ "$DIA1" != "$DIA2" ]; then


#fi