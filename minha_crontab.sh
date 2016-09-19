#!/bin/bash

mysql -u root  -e 'CREATE DATABASE IF NOT EXISTS ADM_SO;'
mysql -u root  -e 'USE ADM_SO;CREATE TABLE IF NOT EXISTS AULA( id int NOT NULL AUTO_INCREMENT, nome varchar(255) NULL, PRIMARY KEY (id));'
mysql -u root  -e 'USE ADM_SO;INSERT INTO AULA(nome) VALUES(concat("'$1'",RAND()));'

