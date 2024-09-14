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
  --p2p.bootnodes=enr:-J64QPJKIWKvnqHOP8Y-SBce6CwXzUxM6ImunUC7jNm_IXFlT9xM6E4Ftn5WyZmnMsxfpvCfUdbj1qnMhk16uVQ7blOGAZHu6QjkgmlkgnY0gmlwhGfnVimHb3BzdGFja4Te3AMAiXNlY3AyNTZrMaEC-l98VPj2Io0MBS0iVPjJAVGsTTmLx6OzLsn4uyW9eD-DdGNwgjLIg3VkcIKLUg,enr:-J64QBMbYd9WwEf6989SAYHv77x62XMTkAbuzV6CtL9vCeVwNWKJtvnVrwZcaWvy5JwmSY8JHZm37kCoLw7IeRMmuCGGAZHu6Q2LgmlkgnY0gmlwhGfnVimHb3BzdGFja4Te3AMAiXNlY3AyNTZrMaED_jv3BhvhDGAopMe33bF1x0ETJKZv-zBnSBNAKKZJwmGDdGNwgjLKg3VkcIK6CA,enr:-J64QMaZQ45gIyjGBiLqAAf7zqSzEJhKft00qjxraGshduyUUjSBHS0sanwI-zpkrvDzLmJSnFbdv9gYhSBm5MZpQYqGAZHu6RDkgmlkgnY0gmlwhGfnViqHb3BzdGFja4Te3AMAiXNlY3AyNTZrMaEDcz_Q4nHq4DN-IqYjEF8S39g4Prh7sxtkQ0IyHtNZTtCDdGNwgjLIg3VkcIKnFg,enr:-J64QDQzes5Rx5sJpvheFjEMGBh9L8skV0Nwy3afE-Ld0IkSFRlnEwfwuUr22mmrQgUxENUuxLmRdF05St8l_zD9v8-GAZHu6RUogmlkgnY0gmlwhGfnViqHb3BzdGFja4Te3AMAiXNlY3AyNTZrMaECX43qcxIN6RCyANTrbG4liUBxOO7cJUjDiNm8r-PMUN-DdGNwgjLKg3VkcILMrQ,enr:-J64QKhi5jt9TqE5-xsk2CHFSQlqm4UhciklzS1Og7FVo__Xa8yhl0BhhedjJJCCPF4VtRb97wVl4MyCuSdiI9m_guaGAZHu6RhngmlkgnY0gmlwhGfnViuHb3BzdGFja4Te3AMAiXNlY3AyNTZrMaECNOLA2emVn6UXd-MHO1v9SX8azf6oM9zf-Tigd0gHP8mDdGNwgjLIg3VkcILMvw,enr:-J64QHOCcE8ZPmHulTS5t9EF2AVTWjuoAevbqAH8AdKNIVglZu9UjUM2ZFR12OEaQkxGf9ccxZMbkwnmdNz_ow2dJX2GAZHu6RxQgmlkgnY0gmlwhGfnViuHb3BzdGFja4Te3AMAiXNlY3AyNTZrMaECjDiwUmPj6ZJ2MI9HL3FoPvWlQIpWvjDDLl6Na81lxBODdGNwgjLKg3VkcILN4g \
  --l1.beacon.ignore \
  --l1.rpckind=basic  > ./logs/op-node.log 2>&1