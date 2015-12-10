#!/bin/bash


while read usuarios
do
	{
echo $usuarios
	}
done < usuarios.txt
sudo sh usuarios.txt


