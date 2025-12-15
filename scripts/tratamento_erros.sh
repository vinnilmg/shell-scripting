ls "/DIRETORIO_Q_NAO_EXISTE" 2>erros.txt 
if [ $? -eq 0 ]
then
	echo "Script executado com sucesso"
else
	echo "Houve uma falha na execução do script"
fi