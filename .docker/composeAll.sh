#!/bin/bash

command=$1
if [ -z "$command" ]; then
  echo "Commands parameter: up，down";
  exit 1
fi

if [ -n "$2" ]; then
  command="$command $2"
fi

path=$(cd `dirname $0`; cd ..; pwd)

node_yml=$path/node/docker-compose.yml
baota_yml=$path/baota/docker-compose.yml
nginx_yml=$path/nginx/docker-compose.yml

docker-compose -f $node_yml $command \
&& docker-compose -f $baota_yml $command \
&& docker-compose -f $nginx_yml $command

exit 0
