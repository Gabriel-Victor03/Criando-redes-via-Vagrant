#!/bin/bash
echo "Maquina Virtual 2 rodando"
sudo apt update
sudo apt upgrade
sudo apt install -y mysql-server
sudo ip route add default via 192.168.50.12