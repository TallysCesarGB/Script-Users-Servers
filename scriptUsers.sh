#!/bin/bash

echo "Criando diretórios..."

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e alocando aos seus devidos grupos..."

useradd tallys -m -s /bin/bash -p $(openssl passwd -crypt @Senha123) -G GRP_ADM
useradd cesar -m -s /bin/bash -p $(openssl passwd -crypt @Senha123) -G GRP_ADM
useradd gurgel -m -s /bin/bash -p $(openssl passwd -crypt @Senha124) -G GRP_ADM


useradd wilson-m -s /bin/bash -p $(openssl passwd -crypt @Senha124) -G GRP_VEN
useradd jose -m -s /bin/bash -p $(openssl passwd -crypt @Senha124) -G GRP_VEN
useradd batista -m -s /bin/bash -p $(openssl passwd -crypt @Senha124) -G GRP_VEN


useradd julieta -m -s /bin/bash -p $(openssl passwd -crypt @Senha124) -G GRP_SEC
useradd marcia -m -s /bin/bash -p $(openssl passwd -crypt @Senha124) -G GRP_SEC
useradd bezerra -m -s /bin/bash -p $(openssl passwd -crypt @Senha124) -G GRP_SEC

echo "Setando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 777 /publica
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven

echo "Finalizado..."






