#!/bin/bash

echo "Maquina Virtual 3 rodando"
sudo apt update
sudo apt upgrade
#configurar o gateway da rede pública 
sudo sysctl -w net.ipv4.ip_forward=1
#configurar o NAT
sudo iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE