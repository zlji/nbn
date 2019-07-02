#!/bin/bash

command=$1
if [ -z "$command" ]; then
  echo "Commands parameter: up，down";
  exit 1
fi

if [ -n "$2" ]; then
  command="$1 $2"
fi

path=$(cd `dirname $0`; cd ..; pwd)

nginx_yml=$path/nginx/docker-compose.yml
baota_yml=$path/baota/docker-compose.yml
node_yml=$path/node/docker-compose.yml

docker-compose -f $nginx_yml  -f $baota_yml -f $node_yml $command
