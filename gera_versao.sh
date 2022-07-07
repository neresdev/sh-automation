#!/bin/bash
# recebe a versão por parametro na hora da execução
VERSAO_API=$1

function zipaJar(){
	echo "gerando versao $VERSAO_API zip do projeto";
	cd ~/visualmix/jars/mercafacil;
	zip vm-mercafacil-api-$VERSAO_API.zip vm-mercafacil-api.jar;

}

function copiaJar(){
	cp ~/visualmix/develop/wks/wk-mercafacil/vm-mercafacil/target/vm-mercafacil-api.jar ~/visualmix/jars/mercafacil;
}

function limpaPasta(){
	rm -rf /home/neres/visualmix/jars/mercafacil/*;
}

limpaPasta;
copiaJar;
zipaJar;

