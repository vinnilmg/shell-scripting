#!/bin/bash

echo -e "Iniciando script SH\n"

CAMINHO_IMAGENS="../imagens-livros" 
cd $CAMINHO_IMAGENS

cria_diretorio() {
	echo "Executando função cria_diretorio()"
	
	local dir_name="png"
	
	if [ ! -d $dir_name ] 
	then
		echo "Criando pasta ${dir_name} em ${CAMINHO_IMAGENS}"
		mkdir $dir_name
	else
		echo "Pasta ${dir_name} já criada!!!"
	fi
}

cria_diretorio