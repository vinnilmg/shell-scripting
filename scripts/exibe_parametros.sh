#!/bin/bash

echo -e "Iniciando script SH\n"

obtem_parametros() {
	echo "Executando função obtem_parametros()"
	
	echo "Obtendo o primeiro parametro: $1"
	echo "Obtendo o segundo parametro: $2"
}

obtem_parametros $1 $2