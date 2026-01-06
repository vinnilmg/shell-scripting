#!/bin/bash

echo -e "Iniciando script SH\n"

LOG_DIR="../apache-log/"
cd $LOG_DIR

IP=$1
REGEX_IP="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [ ! -n "$IP" ]
then
  echo "Error: Informe um IP!"
  exit 1
fi

if [[ $IP =~ $REGEX_IP ]]
then
  echo "Filtrando IP: ${IP}"
  
  cat apache.log | grep $IP
  
  if [ $? -ne 0 ]
  then
    echo "IP não existe no arquivo!"
  fi
else
  echo "Formato de IP inválido!"
fi
