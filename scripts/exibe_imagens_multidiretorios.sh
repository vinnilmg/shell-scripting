#!/bin/bash

echo -e "Iniciando script SH\n"

IMAGES_DIR=$(realpath "../imagens-separadas-por-pasta/")

varrer_diretorio() {
  local diretorio_inicial=$1
  cd $diretorio_inicial

  for arquivo_ou_dir in *
  do
    local diretorio_atual=$(pwd)
    local caminho_completo="${diretorio_atual}/${arquivo_ou_dir}"

    if [ -d $caminho_completo ]
    then
      varrer_diretorio $caminho_completo
      cd $diretorio_inicial #Retorna ao caminho inicial
    else
      echo "- ${caminho_completo}"
    fi
  done
  echo -e "Varredura no diretório finalizada.\n"
}

echo "Varrendo diretório: ${IMAGES_DIR}"
varrer_diretorio $IMAGES_DIR
if [ $? -eq 0 ]
then
  echo "Varredura completada!"
else
  echo "Houve uma falha na varredura"
fi