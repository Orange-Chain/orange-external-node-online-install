#!/usr/bin/env bash
./op-node \
  --l2=http://127.0.0.1:8551 \
  --l2.jwt-secret=./config/jwtsecret \
  --rollup.config=./config/rollup.json \
  --rpc.addr=127.0.0.1 \
  --rpc.port=4000 \
  --rpc.enable-admin \
  --l1=http://alb-rpc-oracle-orange-2050801690.us-east-1.elb.amazonaws.com \
  --p2p.listen.ip=0.0.0.0 \
  --p2p.listen.tcp=13000 \
  --p2p.listen.udp=12000 \
  --p2p.bootnodes=enr:-J64QDRxb6oF6vkDWGLgyE6LoATagijL1cvd37vb18RxB30oY7dbjg1Q2OaNuw_afmBVtrwoljhXQSqq6e-lNthvtQWGAZDdk8d7gmlkgnY0gmlwhCzfNUOHb3BzdGFja4Te3AMAiXNlY3AyNTZrMaEDfIOMxArgJ2wZKuCeZo28INVSsNF2A9E0u-1W2pPUotCDdGNwgjLIg3VkcIKDmw,enr:-J64QIJqKgZ-sexJ51zRE_usaieNZbYocxLYAvZGM9QVrdg-KZ-aVFgZk4YfUcxkbxUXw0T_r1apiJeJ6pePi6ZVyjyGAZDdjnybgmlkgnY0gmlwhBLUeT-Hb3BzdGFja4Te3AMAiXNlY3AyNTZrMaEDdE4bhw8Zw-EHlCJB2G_k-yF9roDnedOUezmhITcUXt6DdGNwgjLIg3VkcIKIDQ,enr:-J64QNR1jkXnR5UvFhbsjpRum4SEGXZDSS8Lm0_7NhH2vlrjfT5ET4X6d3BVTQ-udU8V07ThBbWdCbB7-xoP-t1YtKaGAZDdkiFjgmlkgnY0gmlwhDbSu06Hb3BzdGFja4Te3AMAiXNlY3AyNTZrMaECyn1j8xwmkZPK8iei_WpfyaH3QvPlZhJDbfn-C2SwWXWDdGNwgjLIg3VkcILGIA \
  --l1.beacon.ignore \
  --l1.rpckind=basic  > ./logs/op-node.log 2>&1