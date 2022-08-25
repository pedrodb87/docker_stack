#!/bin/bash


docker service create    \
--replicas=3 \
--publish mode=host,target=80,published=80 \
--name=wordpress \
--constraint=node.role==worker \
--env WORDPRESS_DB_HOST=mysql:3306 \
--env WORDPRESS_DB_USER=wordpress  \
--env WORDPRESS_DB_PASSWORD=wordpress \
--env WORDPRESS_DB_NAME=wordpress   \
wordpress:php7.3


# bash app.sh