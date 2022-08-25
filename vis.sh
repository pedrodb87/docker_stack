#!/bin/bash


docker service create    \
--constraint=node.role==manager    \
--mode=global \
--publish mode=host,target=8080,published=8080  \
--mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
--name=visualizer \
dockersamples/visualizer

# bash vis.sh