#!/bin/bash

service=$1
if [ -z "$service" ]; then
  echo "Service paramter: nginx, baota, node"
  exit 1;
fi

$(dirname $0)/.docker/exec.sh $service
