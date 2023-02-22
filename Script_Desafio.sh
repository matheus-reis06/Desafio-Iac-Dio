#!/bin/bash

echo "Criando diretórios..."

mkdir /Desafio

cd Desafio

mkdir public
mkdir adm
mkdir ven
mkdir sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários..."

#Usuários ADM

useradd Carlos -c "Usuário Carlos" -s /bin/bash  -p $(openssl passwd senha123) -G GRP_ADM

useradd Maria -c "Usuário Maria" -s /bin/bash  -p $(openssl passwd -crypt senha123) -G GRP_ADM 

useradd Joao_ -c "Usuário Joao_" -s /bin/bash  -p $(openssl passwd -crypt senha123) -G GRP_ADM 


#Usuários VEN

useradd Debora -c "Usuário Debora" -s /bin/bash  -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd Sebastiana -c "Usuário Sebastiana" -s /bin/bash  -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd Roberto -c "Usuário Roberto" -s /bin/bash  -p $(openssl passwd -crypt senha123) -G GRP_VEN

#Usuários SEC

useradd Josefina -c "Usuário Josefina" -s /bin/bash  -p $(openssl passwd -crypt senha123) -G GRP_SEC

useradd Amanda -c "Usuário Amanda" -s /bin/bash  -p $(openssl passwd -crypt senha123) -G GRP_SEC

useradd Rogerio -c "Usuário Rogerio" -s /bin/bash  -p $(openssl passwd -crypt senha123) -G GRP_SEC 

#Permissões

#Alterar dono diretório
chown -Rc Root public

#Alterar o Grupo pertencente ao diretório

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

#Alterar Permissões diretórios

chmod 777 public
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Processo Finalizado..."
