#!/bin/bash

sudo mkdir /usr/local/mysql/etc

echo "[client]" > /usr/local/mysql/etc/my.cnf
echo "port = 3306" >> /usr/local/mysql/etc/my.cnf 
echo "socket = /tmp/mysql.sock" >> /usr/local/mysql/etc/my.cnf
echo "[mysqld]" >> /usr/local/mysql/etc/my.cnf 
echo "port = 3306">> /usr/local/mysql/etc/my.cnf 
echo "socket = /tmp/mysql.sock" >> /usr/local/mysql/etc/my.cnf
echo "ndbcluster">> /usr/local/mysql/etc/my.cnf
echo "ndb-connectstring=192.168.43.225" >> /usr/local/mysql/etc/my.cnf
echo  "[mysql_cluster]">> /usr/local/mysql/etc/my.cnf
echo  "ndb-connectstring=192.168.43.225" >> /usr/local/mysql/etc/my.cnf
sudo chmod -R 777 /usr/local/mysql/data
export PATH=$PATH:/usr/local/mysql/bin
ndbd 

