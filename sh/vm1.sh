#!/bin/bash
echo "Maquina Virtual 1 rodando"
sudo apt update
sudo apt upgrade
sudo apt install -y apache2
sudo mkdir -p /var/www/html
# configurando a vm3 como gateway padrão
echo "route add default gw 192.168.50.12" >> /etc/network/interfaces 
# instalando pacotes para criação da porta da rede
sudo apt install net-tools # instala a ferramenta net-tools que tem  comandos para exibir informação da rede
sudo apt istall ifupdown #instala o pacote que é usado para configurar interfaces
sudo ifconfig enp0s8 up #ativa a interface de rede
# adicionando ip estático da vm na interface enp0s8
sudo ip addr add 192.168.50.10/24 dev enp0s8 
# conectando a rede privada da vm3 para ter acesso a internet
sudo ip route add default via 192.168.50.12