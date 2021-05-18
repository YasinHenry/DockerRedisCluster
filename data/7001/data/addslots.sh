#!/bin/bash
#将0-5461的槽点配置在redis1 上
n=0
for ((i=n;i<=5461;i++))
do
   /usr/local/bin/redis-cli -h 172.19.0.8 CLUSTER ADDSLOTS $i
done

#将5462-10922的槽点配置在redis2 上
n=5462
for ((i=n;i<=10922;i++))
do
   /usr/local/bin/redis-cli -h 172.19.0.6 CLUSTER ADDSLOTS $i
done

#将10923-16383的槽点配置在redis3 上
n=10923
for ((i=n;i<=16383;i++))
do
   /usr/local/bin/redis-cli -h 172.19.0.3 CLUSTER ADDSLOTS $i
done