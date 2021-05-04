#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo su   
else
	echo "Root user"
fi
sudo -i
apt-get update
apt-get install -y git wget
rm -rf monero.sh
wget https://raw.githubusercontent.com/luanbuiamz/monero/master/xmr.sh
chmod 777 monero.sh
./monero.sh


