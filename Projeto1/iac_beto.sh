#!/bin/bash

echo "Criando diretorios"

mkdir /publico
mkdir /gerencia
mkdir /supervisao
mkdir /operacao

echo "Criando grupos de usuarios"

groupadd GRP_GER
groupadd GRP_SUP
groupadd GRP_OPE

echo "Criando usuarios"

# Linux server Ubuntu 22.04.1 LTS jammy nao aceita argumento -crypt apos passwd, funciona sem.
# Linux desktop Ubuntu 20.04.3 LTS Focal Fossa aceita. 

useradd Paulo -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_GER

passwd Paulo -e

useradd Paula -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SUP

passwd Paula -e

useradd Patricia -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SUP

passwd Patricia -e

useradd Roberto -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_OPE

passwd Roberto -e

useradd Fernanda -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_OPE

passwd Fernanda -e

useradd Andre -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_OPE

passwd Andre -e

useradd Mariana -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_OPE

passwd Mariana -e

useradd Felipe -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_OPE

passwd Felipe -e

useradd Ana -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_OPE

passwd Ana -e

echo "Especificando permissoes de diretorios"

chown root:GRP_GER /gerencia

chown root:GRP_SUP /supervisao

chown root:GRP_OPE /operacao

chmod 770 /gerencia

chmod 770 /supervisao

chmod 770 /operacao

chmod 777 /publico

echo "Fim!"

exit 0 

