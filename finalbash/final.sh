#!/bin/bash

source ./utils.sh

function logsapolo11() {
       estado=`echo ${estados[$(($RANDOM%5))]}`
       proyecto=`echo ${proyectos[$(($RANDOM%4))]}`
	   echo $estado > ${RUTA2}/APL-$proyecto-000$i.log 2>> ${RUTA1}/error.log
       chmod 777 ${RUTA2}/APL-$proyecto-000$i.log 2>> ${RUTA1}/error.log
       sudo chown $proyecto:nasa  ${RUTA2}/APL-$proyecto-000$i.log 2>> ${RUTA1}/error.log
}

if [ "$DIA1" != "$DIA2" ]; then

   for i in {1..10};
     do
       logsapolo11
     done
   DIA2=`date +"%d-%m-%Y"`
fi