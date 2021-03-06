#!/bin/bash

echo "iniciado script MEU INIT"

cd /home/$USER/

if which apache2 > /dev/null ; then
    echo "Apache2 já esta instalado"
else
    sudo apt-get install apache2 -y
fi
sudo chown $USER /var/www/*
rm -rf /var/www/html/*

if [ ! -d "/home/$USER/FatecSCSCriptografia" ]; then
   git clone https://github.com/vtferrari/FatecSCSCriptografia.git
fi

mv /home/$USER/FatecSCSCriptografia/public_html/* /var/www/html/
rm -rf /home/$USER/FatecSCSCriptografia

firefox localhost
