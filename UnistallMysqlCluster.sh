#!/bin/bash



echo " Desinstalar y Eliminar todas las paqueterias MySQL y MariaDB";


	
	
	echo "<<<<<<<<<<<<<<<<<<<<      ||   Desinstalando MySQL-Cluster       ||        >>>>>>>>>>>>>>>"
	
	echo "|| Eliminando Mysql instalado por DEFAULT || "
	#sudo apt-get remove --purge mysql*;
	#sudo aptitude purge mysql-server mysql-common;
	#sudo apt-cache search mysql ;
	sudo rm -R /usr/local/mysql
	#sudo rm -R /usr/local/mysql-cluster-gpl-7.4.7-linux-glibc2.5-i686
	sudo rm -R /var/lib/mysql-cluster
	sudo rm -R /etc/init.d/mysql.server
	sudo rm -R /usr/local/bin/ndb_mgm
	sudo rm -R /usr/local/bin/ndb_mgmd



	#sudo rm -R /etc/
	
	
