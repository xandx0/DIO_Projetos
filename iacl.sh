#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de Usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários..."

useradd pedro -m -s /bin/bash -p $(openssl passwd -crypt senha321) -G GRP_ADM
useradd loli -m -s /bin/bash -p $(openssl passwd -crypt senha321) -G GRP_ADM
useradd paula -m -s /bin/bash -p $(openssl passwd -crypt senha321) -G GRP_ADM

useradd julio -m -s /bin/bash -p $(openssl passwd -crypt senha321) -G GRP_VEN
useradd rafa -m -s /bin/bash -p $(openssl passwd -crypt senha321) -G GRP_VEN
useradd lili -m -s /bin/bash -p $(openssl passwd -crypt senha321) -G GRP_VEN

useradd mario -m -s /bin/bash -p $(openssl passwd -crypt senha321) -G GRP_SEC
useradd zeze -m -s /bin/bash -p $(openssl passwd -crypt senha321) -G GRP_SEC
useradd alice -m -s /bin/bash -p $(openssl passwd -crypt senha321) -G GRP_SEC

echo "Dando as Permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_ADM /ven
chown root:GRP_ADM /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
