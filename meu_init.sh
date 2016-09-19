#!/bin/bash

cd /home/$USER/

if [ ! -d "/home/$USER/FatecSCSCriptografia" ]; then
   git clone https://github.com/vtferrari/FatecSCSCriptografia.git
fi

