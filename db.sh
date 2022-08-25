#!/bin/bash

docker service create    \
--replicas=3 \
--publish mode=host,target=3306,published=3306 \
--name=mysql \
--constraint=node.role==worker \
--env MYSQL_ROOT_PASSWORD=wordpress \
--env MYSQL_DATABASE=wordpress \
--env MYSQL_USER=wordpress \
--env MYSQL_PASSWORD=wordpress \
mysql

# bash db.sh