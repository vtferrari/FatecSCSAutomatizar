#!/bin/bash

mkdir /home/$USER/Programas
mkdir /home/$USER/Projetos

sudo apt-get upgrade -y
sudo apt-get update -y

clear

if which git > /dev/null ; then
    echo "Git já esta instalado"
else
    sudo apt-get install git -y
fi


if which java > /dev/null ; then
    echo "Java já esta instalado"
else
    sudo apt-get install openjdk-8-jdk -y
fi

if which mvn > /dev/null ; then
    echo "Maven já esta instalado"
else
    sudo apt-get install maven -y
fi

if which ant > /dev/null ; then
    echo "ant já esta instalado"
else
    sudo apt-get install ant -y
fi


if which ivy > /dev/null ; then
    echo "ivy já esta instalado"
else
    sudo apt-get install ivy -y
fi


if which mysql > /dev/null ; then
    echo "MySQL já esta instalado"
else
    sudo apt-get install mysql-server -y
fi


if which mysql-workbench > /dev/null ; then
    echo "mysql-workbench já esta instalado"
else
    sudo apt-get install mysql-workbench -y
fi
if [ ! -d "/home/$USER/Programas/netbeans-8.1" ]; then
    cd Programas
    wget http://download.netbeans.org/netbeans/8.1/final/bundles/netbeans-8.1-linux.sh
    chmod a+x netbeans-8.1-linux.sh
    sh netbeans-8.1-linux.sh
    rm netbeans-8.1-linux.sh
else
    echo "netbeans já esta instalado"
fi
if [ ! -d "/home/$USER/Programas/glassfish-4.1.1" ]; then
    cd Programas
    wget http://download.netbeans.org/netbeans/8.1/final/bundles/netbeans-8.1-linux.sh
    chmod a+x netbeans-8.1-linux.sh
    sh netbeans-8.1-linux.sh
    rm netbeans-8.1-linux.sh
else
    echo "glassfish já esta instalado"
fi
if [ ! -d "/home/$USER/Programas/apache-tomcat-8.0.27" ]; then
    cd Programas
    wget http://download.netbeans.org/netbeans/8.1/final/bundles/netbeans-8.1-linux.sh
    chmod a+x netbeans-8.1-linux.sh
    sh netbeans-8.1-linux.sh
    rm netbeans-8.1-linux.sh
else
    echo "tomcat já esta instalado"
fi
if [ ! -f "/home/$USER/meu_init.sh" ]; then
    if [ ! -d "/home/$USER/FatecSCSAutomatizar" ]; then
        git clone https://github.com/vtferrari/FatecSCSAutomatizar.git
	mv /home/$USER/FatecSCSAutomatizar/* /home/$USER/
	chmod a+x meu_init.sh
	chmod a+x minha_crontab.sh
    fi
fi




