#!/bin/bash

echo -e "Iniciando script SH\n"

URL="http://www.google.com" 
HTTP_STATUS_CODE=$(curl --write-out %{http_code} --silent --output /dev/null $URL)

echo "Status Code: $HTTP_STATUS_CODE"

if [  $HTTP_STATUS_CODE -eq 200 ]
then
  echo "OK, Sucesso!"
else
  echo "NOK, Houve um problema de comunicação!"
fi