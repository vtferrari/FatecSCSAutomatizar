#!/bin/bash


sudo /etc/init.d/mysql start
mysql -u root -P '' -e 'SELECT 1;'
