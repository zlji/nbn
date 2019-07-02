#!/bin/bash

name=$1
if [ -z "$name" ]; then
  echo "Container name is empty!"
  exit 1;
fi

bash="/bin/bash"
if [ -n "$2" ]; then
  bash=$2
fi

docker exec -it $name $bash
