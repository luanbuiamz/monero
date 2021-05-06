#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo su   
else
	echo "Root user"
fi
sudo -i
apt-get update
apt-get install -y git wget
rm -rf arq.sh
wget https://raw.githubusercontent.com/luanbuiamz/monero/master/arq.sh
chmod 777 arq.sh
./arq.sh
