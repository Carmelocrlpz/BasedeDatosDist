#!/bin/bash
 
 
groupadd mysql
useradd mysql -g mysql 

var2=$(whoami)
 sudo apt-get install libaio1
 cd /usr/local
 sudo ln -s /usr/local/mysql-cluster-gpl-7.4.8-linux-glibc2.5-x86_64/ mysql
 cd mysql
 sudo chown -R mysql:mysql .
 sudo scripts/mysql_install_db --user=mysql
 sudo chown -R root . 
 sudo chown -R mysql data 

 sudo echo "export PATH=$PATH:/usr/local/mysql/bin" >> /home/$var2/bash.bashrc
 sudo cp /usr/local/mysql/support-files/mysql.server /etc/init.d/mysql.server

 sudo update-rc.d mysql.server defaults
 
 #ln -s /etc/init.d/mysql.server S20mysql.server

