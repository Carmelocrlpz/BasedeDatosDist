import socket, os
#Conectando y haciendo respaldo con Usuario, password en Mysql
os.popen("mysqldump --user=root --password=lopez empresa > /home/ccrbug/Documentos/respaldo.sql")

ruta = "/home/ccrbug/Documentos/"
filename = "respaldo2.sql"
HOST = "192.168.105.30"

#puertos

CPORT = 9090
FPORT = 9091

control = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
control.connect((HOST,CPORT))
control.send("SEND" + filename)
control.close()
archivo = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
archivo.connect((HOST,FPORT))

f = open (ruta+filename,"rb")
datos = f.read()
f.close()


archivo.send(datos)
archivo.close()
