#!/bin/bash

cria_diretorio() {
  if [ ! -d log ]
  then
    mkdir log
  fi
}

cria_diretorio

NOME_ARQUIVO=log/teste.log

echo -n "[$(date +%F,%H:%M:%S)] " >> $NOME_ARQUIVO
echo "Escrevendo a data e hora em um arquivo de log!" >> $NOME_ARQUIVO

echo "Arquivo gerado com sucesso!" 