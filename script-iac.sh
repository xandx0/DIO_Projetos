#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-gat upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquirvos da aplicação...."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip  <?"eu não tenho o link correto. esse é um link da aula"/>
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
