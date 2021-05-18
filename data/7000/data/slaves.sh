# 需要用到 从 redis 到IP 与 主redis 的节点标识
# 主 redis1 从 redis4
/usr/local/bin/redis-cli -h 172.19.0.173 -p 7003 -a yasin CLUSTER REPLICATE 5631cd7205b964c0c848ddc7292835fa8a4df57c
# 主 redis2 从 redis5
/usr/local/bin/redis-cli -h 172.19.0.174 -p 7004 -a yasin CLUSTER REPLICATE d0423573bfe628fb03cee2feead667ef5679c17d
# 主 redis3 从 redis6
/usr/local/bin/redis-cli -h 172.19.0.175 -p 7005 -a yasin CLUSTER REPLICATE 8563d43bf400b6435a921f4783420cca02fa2d5a

