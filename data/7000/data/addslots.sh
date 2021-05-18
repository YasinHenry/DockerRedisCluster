#!/bin/bash
#将0-5461的槽点配置在redis1 上

   /usr/local/bin/redis-cli -h 172.19.0.170 -p 7000 -a yasin CLUSTER ADDSLOTS {0,5461}


#将5462-10922的槽点配置在redis2 上

   /usr/local/bin/redis-cli -h 172.19.0.172 -p 7002 -a yasin  CLUSTER ADDSLOTS {5462,10922}


#将10923-16383的槽点配置在redis3 上

   /usr/local/bin/redis-cli -h 172.19.0.172 -p 7002 -a yasin  CLUSTER ADDSLOTS {10923,16383}
