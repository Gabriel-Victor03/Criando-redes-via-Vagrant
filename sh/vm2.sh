#!/bin/bash
echo "Maquina Virtual 2 rodando"
sudo apt update
sudo apt upgrade
sudo apt install -y mysql-server
# instalando pacotes para criação da porta da rede
sudo apt install net-tools
sudo apt istall ifupdown
sudo ifconfig enp0s8 up
# adicionando ip estático da vm
sudo ip addr add 192.168.50.11/24 dev enp0s8
# conectando o gateway da vm3 para ter acesso a internet
sudo ip route add default via 192.168.50.12