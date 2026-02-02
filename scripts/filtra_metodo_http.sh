#!/bin/bash

echo -e "Iniciando script SH\n"

LOG_DIR="../apache-log/"
cd $LOG_DIR

if [ -z $1 ]
then
  while [ -z $unf_method ]
  do
    read -p "Informe um valor para o parâmetro (GET, POST, PUT ou DELETE): " unf_method
    HTTP_METHOD=$(echo $unf_method | awk '{ print toupper($1) }')
  done
else
  HTTP_METHOD=$(echo $1 | awk '{ print toupper($1) }')
fi

case $HTTP_METHOD in 
  "GET")
  cat apache.log | grep GET
  ;;

  POST)
  cat apache.log | grep POST
  ;;

  PUT)
  cat apache.log | grep PUT
  ;;

  DELETE)
  cat apache.log | grep DELETE
  ;;

  *) # Qualquer outra coisa
  echo "O parâmetro informado não é válido!"
  ;;
esac