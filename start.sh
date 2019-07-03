#!/bin/bash

net=$(docker network ls | grep docker)
if [ -z "$net" ]; then
  echo "Create network docker:"
  docker network create docker
fi

service=$1
if [ -z "$service" ]; then
  $(dirname $0)/.docker/composeAll.sh up -d
else
  $(dirname $0)/.docker/compose.sh $service up -d
fi

