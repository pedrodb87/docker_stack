#!/bin/bash

docker service create    \
--replicas=3 \
--publish mode=host,target=6379,published=6379 \
--name=redis \
--constraint=node.role==worker \
redis

# bash redis.sh