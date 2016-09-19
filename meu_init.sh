#!/bin/bash

cd /home/$USER/

if which apache2 > /dev/null ; then
    echo "Apache2 já esta instalado"
else
    sudo apt-get install apache2 -y
fi

rm -rf /var/www/html/*

if [ ! -d "/home/$USER/FatecSCSCriptografia" ]; then
   git clone https://github.com/vtferrari/FatecSCSCriptografia.git
fi

mv /home/$USER/FatecSCSCriptografia/* /var/www/html/
rm -rf /home/$USER/FatecSCSCriptografia

