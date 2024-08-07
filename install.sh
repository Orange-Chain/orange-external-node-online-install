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

mkdir -p ./orange-external-node/geth/logs
mkdir -p ./orange-external-node/geth/config
mkdir -p ./orange-external-node/op-node/logs
mkdir -p ./orange-external-node/op-node/config
cd orange-external-node/

echo -n 0x$(openssl rand -hex 32 | tr -d "\n") > ./geth/config/jwtsecret
cp ./orange-external-node/geth/config/jwtsecret ./op-node/config/jwtsecret

wget http://18.167.109.180:8866/orange-external-node/orange-external-node/geth/geth -O ./geth/geth
wget http://18.167.109.180:8866/orange-external-node/orange-external-node/op-node/op-node -O ./op-node/op-node
chmod +x ./geth/geth
chmod +x ./op-node/op-node

echo "Select the network you want to join \n"
echo -e " 1.Orange Mainnet\n 2.Orange Testnet\n"
read -p "Enter index: " netType;
if [ "$netType" == "1" ];then
    wget http://18.167.109.180:8866/orange-external-node/orange-external-node/geth/mainnet/run.sh -O ./geth/run.sh
    wget http://18.167.109.180:8866/orange-external-node/orange-external-node/geth/mainnet/config/config.toml -O ./geth/config/config.toml
    wget http://18.167.109.180:8866/orange-external-node/orange-external-node/geth/mainnet/config/genesis.json -O ./geth/config/genesis.json
    wget http://18.167.109.180:9002/snapshot.tar.gz
    tar -xzvf snapshot.tar.gz
elif [ "$netType" == "2" ]; then
    wget http://18.167.109.180:8866/orange-external-node/orange-external-node/geth/testnet/run.sh -O ./geth/run.sh
    wget http://18.167.109.180:8866/orange-external-node/orange-external-node/geth/testnet/config/config.toml -O ./geth/config/config.toml
    wget http://18.167.109.180:8866/orange-external-node/orange-external-node/geth/testnet/config/genesis.json -O ./geth/config/genesis.json
    wget http://18.167.109.180:9002/snapshot-testnet.tar.gz
    tar -xzvf snapshot-testnet.tar.gz
else
    echo "The current network does not support"
    exit 1;
fi
mv data_bak geth/data
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