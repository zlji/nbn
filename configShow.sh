#!/bin/bash

service=$1
if [ -z "$service" ]; then
  $(dirname $0)/.docker/composeAll.sh config
else
  $(dirname $0)/.docker/compose.sh $service config
fi


