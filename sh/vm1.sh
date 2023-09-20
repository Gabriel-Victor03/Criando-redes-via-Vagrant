#!/bin/bash
echo "Maquina Virtual 1 rodando"
sudo apt update
sudo apt upgrade
sudo apt install -y apache2

#conectando a rede privada da vm3 para ter acesso a internet
sudo ip route add default via 192.168.50.12