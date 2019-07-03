#!/bin/bash

service=$1
if [ -z "$service" ]; then
  echo "Service parameter: nginx, baota, node"
  exit 1
fi

path=$(cd `dirname $0`; cd ..; pwd)
yml=$path/$service/docker-compose.yml

command=$2
if [ -z "$command" ]; then
  echo "Commands parameter: up，down";
  exit 1
fi

if [ -n "$3" ]; then
  command="$command $3"
fi

docker-compose -f $yml $command
exit 0
