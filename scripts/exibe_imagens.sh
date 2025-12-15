#!/bin/bash

echo -e "Iniciando script SH\n"

CAMINHO_IMAGENS="../imagens-livros" 
cd $CAMINHO_IMAGENS

exibe_imagens() {
	echo "Executando função exibe_imagens()"

	echo "Obtendo arquivos da pasta: ${CAMINHO_IMAGENS}"

	for imagem in *.jpg
	do
		local nome_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')
		echo "- ${nome_sem_extensao} | ${nome_sem_extensao}.png"
	done
}

exibe_imagens