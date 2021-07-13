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

DIA1=`date +"%d-%m-%Y"`
DIA2=''
BK="bkmissions-`date +"%d%m%Y"`"

RUTA1=${HOME}/takeoff-mission/devices/${DIA1}

RUTA2=${HOME}/takeoff-mission/logsapolo11/${BK}




estados=(UNKNOW EXCELENT GOOD WARNING KILL)


if [ "$DIA1" != "$DIA2" ]; then


mkdir -p ${HOME}/takeoff-mission/devices/${DIA1},logsapolo11/${BK},config,stats} 2> /dev/null


echo prueba > $RUTA2/error.log
touch $RUTA2/error.log

sudo groupadd nasa 2> ${RUTA2}/error.log
sudo useradd -G nasa orbit 2> ${RUTA2}/error.log
sudo useradd -G nasa colony 2> ${RUTA2}/error.log
sudo useradd -G nasa mars 2> ${RUTA2}/error.log
sudo useradd -G nasa unknow 2> ${RUTA2}/error.log

NUM=1
	while [ $NUM -lt 3 ]; do    
	
	       echo ${estados[$(($RANDOM%5))]} > ${RUTA1}/APL-ORB-000$NUM.log
        echo ${estados[$(($RANDOM%5))]} > ${RUTA1}/APL-MRS-000$NUM.log
        echo ${estados[$(($RANDOM%5))]} > ${RUTA1}/APL-CNL-000$NUM.log
        echo ${estados[$(($RANDOM%5))]} > ${RUTA1}/APL-UNK-000$NUM.log
        
        chmod 777 ${RUTA1}/APL-ORB-000$NUM.log 2> ${RUTA2}/error.log
        chmod 777 ${RUTA1}/APL-MRS-000$NUM.log 2> ${RUTA2}/error.log
        chmod 777 ${RUTA1}/APL-CNL-000$NUM.log 2> ${RUTA2}/error.log
        chmod 777 ${RUTA1}/APL-UNK-000$NUM.log 2> ${RUTA2}/error.log
        
        sudo chown orbit:nasa  ${RUTA1}/APL-ORB-000$NUM.log 2> ${RUTA2}/error.log
        sudo chown mars:nasa   ${RUTA1}/APL-MRS-000$NUM.log 2> ${RUTA2}/error.log
        sudo chown colony:nasa ${RUTA1}/APL-CNL-000$NUM.log 2> ${RUTA2}/error.log
        sudo chown unknow:nasa ${RUTA1}/APL-UNK-000$NUM.log 2> ${RUTA2}/error.log

        
    let NUM=$NUM+1
    DIA2=`date +"%d-%m-%Y"`
	done
else
 echo 'Felicidades ya se ejecuto el proceso de Apolo 11'
fi