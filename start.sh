#!/bin/bash

net=$(docker network ls | grep docker)
if [ -z "$net" ]; then
  echo "Create network docker:"
  docker network create docker
fi

$(dirname $0)/.docker/compose.sh up -d
