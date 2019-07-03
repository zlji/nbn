#!/bin/bash

service=$1
if [ -z "$service" ]; then
  $(dirname $0)/.docker/composeAll.sh logs
else
  $(dirname $0)/.docker/compose.sh $service logs
fi
