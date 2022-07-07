#!/bin/bash

# recebe a versão por parametro na hora da execução
VERSAO_API=$1

# recebe o caminho do .jar junto com o nome do .jar por parâmetro na hora da execução
CAMINHO_JAR=$2

function zipaJar(){
	echo "gerando o .zip da versao $VERSAO_API do projeto";
	cd ~/visualmix/jars/mercafacil;
	zip vm-mercafacil-api-$VERSAO_API.zip vm-mercafacil-api.jar;

}

function copiaJar(){
	cp $CAMINHO_JAR ~/visualmix/jars/mercafacil;
}

function limpaPasta(){
	rm -rf /home/neres/visualmix/jars/mercafacil/*;
}

limpaPasta;
copiaJar;
zipaJar;

