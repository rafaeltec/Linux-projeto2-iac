#!/bin/bash

#restaurado snap shot base
#vamos criar um script de execução que vai isntalar e configurar 
#todo nosso setuop de maquina, atualizações  e palicativos
#permissionamento e etc.

echo "Atualizando o servidor...."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

echo "Baixando e copiando os arquivos da aplicação...."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/

echo "Completo atualizado, baixado aplicação e copiado para a pasta do apache"

echo "Lembrete utilizar chmod +x nomearquivo > para permitir execução > depois ./nomearquivo > para executar"
