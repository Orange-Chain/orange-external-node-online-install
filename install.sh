#!/usr/bin/env bash
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