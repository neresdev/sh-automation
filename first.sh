#!/bin/bash
# recebe a versão por parametro na hora da execução
VERSAO_API=$1
function zipaJar(){
	echo "gerando versao $VERSAO_API zip do projeto";
	rm -rf /home/neres/visualmix/jars/mercafacil/*;
	cp ~/visualmix/develop/wks/wk-mercafacil/vm-mercafacil/target/vm-mercafacil-api.jar ~/visualmix/jars/mercafacil;
	cd ~/visualmix/jars/mercafacil;
	zip vm-mercafacil-api-$VERSAO_API vm-mercafacil-api.jar;

}
zipaJar;
