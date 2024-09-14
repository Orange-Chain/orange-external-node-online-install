#!/usr/bin/env bash
./geth \
--config ./config/config.toml  \
--nodekeyhex b02564d17ed09e3fdf924d94046e508e5f9366142d2b910d9ca20f45d0bef206 \
--authrpc.addr=127.0.0.1 \
--authrpc.vhosts="*" \
--authrpc.jwtsecret=./config/jwtsecret \
--authrpc.port=8551 \
--nat extip:127.0.0.1 \
--rpc.allow-unprotected-txs \
--rollup.disabletxpoolgossip=true \
--rollup.sequencerhttp=https://rpc.orangechain.xyz \
--txpool.pricelimit 2000000 \
--gpo.minsuggestedpriorityfee 2000000 \
--verbosity 4  --syncmode=full --gcmode=archive > ./logs/op-geth.log 2>&1
