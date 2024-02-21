#!/bin/bash

mkdir /publico
chmod 777 /publico

group GRP_ADM
mkdir /adm
chown root:GRP_ADM /adm
chmod 770 /adm

useradd carlos -c "Carlos" -m -s /bin/bash -G GRP_ADM -p $(echo 1234 | openssl passwd --stdin)
useradd maria -c "Maria" -m -s /bin/bash -G GRP_ADM -p $(echo 1234 | openssl passwd --stdin)
useradd joao -c "Joao" -m -s /bin/bash -G GRP_ADM -p $(echo 1234 | openssl passwd --stdin)

group GRP_VEN
mkdir /ven
chown root:GRP_VEN /ven
chmod 770 /ven

useradd debora -c "Debora" -m -s /bin/bash -G GRP_VEN -p $(echo 1234 | openssl passwd --stdin)
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -G GRP_VEN -p $(echo 1234 | openssl passwd --stdin)
useradd roberto -c "Roberto" -m -s /bin/bash -G GRP_VEN -p $(echo 1234 | openssl passwd --stdin)

group GRP_SEC
mkdir /sec
chown root:GRP_SEC /sec
chmod 770 /sec

useradd josefina -c "Josefina" -m -s /bin/bash -G GRP_SEC -p $(echo 1234 | openssl passwd --stdin)
useradd amanda -c "Amanda" -m -s /bin/bash -G GRP_SEC -p $(echo 1234 | openssl passwd --stdin)
useradd Rogerio -c "Rogerio" -m -s /bin/bash -G GRP_SEC -p $(echo 1234 | openssl passwd --stdin)