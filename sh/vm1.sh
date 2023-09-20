#!/bin/bash
echo "Maquina Virtual 1 rodando"
sudo apt update
sudo apt upgrade
sudo apt install -y apache2
# instalando pacotes para criação da porta da rede
sudo apt install net-tools
sudo apt istall ifupdown
sudo ifconfig enp0s8 up
#adicionando ip estático da vm
sudo ip addr add 192.168.50.10/24 dev enp0s8
#conectando a rede privada da vm3 para ter acesso a internet
sudo ip route add default via 192.168.50.12