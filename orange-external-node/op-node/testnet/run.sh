#!/usr/bin/env bash
./op-node \
  --l2=http://127.0.0.1:8551 \
  --l2.jwt-secret=./config/jwtsecret \
  --rollup.config=./config/rollup.json \
  --rpc.addr=127.0.0.1 \
  --rpc.port=4000 \
  --rpc.enable-admin \
  --l1=https://rpc-oracle.orangechain.xyz \
  --p2p.listen.ip=0.0.0.0 \
  --p2p.listen.tcp=13000 \
  --p2p.listen.udp=12000 \
  --p2p.bootnodes=enr:-J64QFCKKrc9Xuf74eSgykKEMT4-DBVtiFXEYV6JAPQiNio2a5Vlra1AhlyNf39ZVi8uHPcd3Vh1b6vSRSVjmRhQPG-GAZIM9f04gmlkgnY0gmlwhGfnVjOHb3BzdGFja4SD1w4AiXNlY3AyNTZrMaEDCTxN62oSLi-4WpGZwtmCGYo3U6qsrEc5vCm5BzZXKT-DdGNwgjLIg3VkcILGug,enr:-J64QONy4p40BYanGqOEZkbRVYAX0a-GIxR4hCblK96_8r7CEFFq81h9Oa0zCSauY1ysKJ6USxWsE5EFXdyTwREV8ruGAZIM9gDIgmlkgnY0gmlwhGfnVjOHb3BzdGFja4SD1w4AiXNlY3AyNTZrMaEC-7GKfRSv2XbF8s3fA3NcQpF_eJ7jcBVeeAtScaUYJquDdGNwgjLJg3VkcIK7OA,enr:-J64QNr-GB9GShQz9V7R0w8ZFC7PC5J7lljpZ2jGdwetamCoTzjA5lUMq4WGe_nLvs6LrDDBqs_MahD9tlM5WUXoGVSGAZEMa8mOgmlkgnY0gmlwhGfnVkeHb3BzdGFja4SD1w4AiXNlY3AyNTZrMaED0SNXhF9hNJ5zJDT4Lmnc01SUaDJ6ttd0VxkMaf6VUD6DdGNwgjLIg3VkcILs1A \
  --l1.beacon.ignore \
  --l1.rpckind=basic  > ./logs/op-node.log 2>&1