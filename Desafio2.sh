#!/bin/bash


echo "Atualizando Servidor..."
apt-get update -y
apt-get upgrade -y

echo "Instalando Arquivos..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando Arquivos 'linux-site-dio'..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando Arquivos..."
unzip main.zip

echo "Organizando arquivos..."
cd linux-site-dio
cp -R * /var/www/html/

