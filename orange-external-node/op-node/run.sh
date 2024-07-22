#!/usr/bin/env bash
./op-node \
  --l2=http://127.0.0.1:8551 \
  --l2.jwt-secret=./config/jwtsecret \
  --rollup.config=./config/rollup.json \
  --rpc.addr=0.0.0.0 \
  --rpc.port=4000 \
  --rpc.enable-admin \
  --l1=http://alb-rpc-oracle-orange-2050801690.us-east-1.elb.amazonaws.com \
  --p2p.listen.ip=0.0.0.0 \
  --p2p.listen.tcp=13000 \
  --p2p.listen.udp=12000 \
  --metrics.enabled \
  --metrics.port=7200 \
  --metrics.addr=0.0.0.0 \
  --p2p.bootnodes=enr:-J64QEGELx1cUwJTMFyjAWP79IQ1wqDnfUKsXdblTL5mecxyXidF8kxyyZzMbpYiEEmZo910wqGYuqRugKIYrdtQlgyGAZCXDuGCgmlkgnY0gmlwhDaeYP-Hb3BzdGFja4Te3AMAiXNlY3AyNTZrMaECBn-TtU2pXnoNK9D-cFlZ1I6Hr9wJ7IGDRKHpFpw34XODdGNwgiQGg3VkcILOkA \
  --l1.beacon.ignore \
  --l1.rpckind=basic  > ./logs/op-node.log 2>&1