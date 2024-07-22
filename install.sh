#!/usr/bin/env bash
is64bit=$(getconf LONG_BIT)
if [ "${is64bit}" != '64' ];then
	echo "The system must be 64-bit";
    exit 1
fi

isAmd64=$(dpkg --print-architecture)
if [ "${isAmd64}" != 'amd64' ];then
	echo "The system must be AMD";
    exit 1
fi

UbuntuCheck=$(cat /etc/issue|grep Ubuntu|awk '{print $2}'|cut -f 1 -d '.')
if [ "${UbuntuCheck}" ] && [ "${UbuntuCheck}" -lt "20" ];then
	echo "The system version must be Ubuntu and no less than v20"
	exit 1
fi

wget http://18.167.109.180:8866/orange-external-node/orange-external-node.tar.gz
tar -xzvf orange-external-node.tar.gz
cd orange-external-node/
wget http://18.167.109.180:9002/snapshot.tar.gz
tar -xzvf snapshot.tar.gz
mv data_bak geth/data

mkdir ./geth/logs
mkdir ./op-node/logs

chmod +x ./geth/run.sh
chmod +x ./geth/geth
chmod +x ./op-node/run.sh
chmod +x ./op-node/op-node

echo "********Installation was successful********"
echo "**Start the service**"
echo "1. Start geth"
echo "    cd ./orange-external-node/geth"
echo "    ./run.sh"
echo "2. Start op-node"
echo "    cd ./orange-external-node/op-node"
echo "    ./run.sh"