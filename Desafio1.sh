#!/bin/ban

echo"Criando Diretórios"

mkdir publico 

mkdir adm

mkdir ven

mkdir sec

echo" "
echo"------------------------"
echo" "

echo"Criando Grupos"

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

echo" "
echo"------------------------"
echo" "

echo"Criando Usuários"

useradd carlos -m -s /bin/bash -p $(python3 -c 'import crypt; print(crypt.crypt("Senha123"))') -G GRP_ADM
useradd maria -m -s /bin/bash -p $(python3 -c 'import crypt; print(crypt.crypt("Senha123"))') -G GRP_ADM
useradd joao -m -s /bin/bash -p $(python3 -c 'import crypt; print(crypt.crypt("Senha123"))') -G GRP_ADM

useradd debora -m -s /bin/bash -p $(python3 -c 'import crypt; print(crypt.crypt("Senha123"))') -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(python3 -c 'import crypt; print(crypt.crypt("Senha123"))') -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(python3 -c 'import crypt; print(crypt.crypt("Senha123"))') -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(python3 -c 'import crypt; print(crypt.crypt("Senha123"))') -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(python3 -c 'import crypt; print(crypt.crypt("Senha123"))') -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(python3 -c 'import crypt; print(crypt.crypt("Senha123"))') -G GRP_SEC

echo" "
echo"------------------------"
echo" "

echo"Separando Usuários em seus devidos grupos..."

echo" "
echo"------------------------"
echo" "

echo"Especificando permições..."

echo" "
echo"------------------------"
echo" "

chmod root:GRP_ADM /adm
chmod root:GRP_VEN /ven
chmod root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo"Finalizado!"

