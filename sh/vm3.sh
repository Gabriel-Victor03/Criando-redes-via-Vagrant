sudo apt update
sudo apt upgrade
sudo iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE