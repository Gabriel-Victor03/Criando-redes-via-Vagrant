#!/bin/bash

echo "Maquina Virtual 3 rodando"
sudo apt update
sudo apt upgrade
# instalando pacotes para criação da porta da rede
sudo apt install net-tools
sudo apt istall ifupdown
sudo ifconfig enp0s8 up 
sudo ip addr add 192.168.50.12/24 dev enp0s8
#configurar o gateway da rede pública 
sudo sysctl -w net.ipv4.ip_forward=1
#configurar o NAT
sudo iptables -t nat -A POSTROUTING -o -enp0s3 -j MASQUERADE
#Linkando a máquina vm1
sudo ip route add 192.168.50.10 via 192.168.50.12 
#Linkando a máquina vm2
sudo ip route add 192.168.50.11 via 192.168.50.12 
