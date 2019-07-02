#!/bin/bash

signal=$1
if [ -z "$signal" ]; then
  echo "Signal parameter: stop, quit, reopen, reload"
  exit;
fi

path=$(dirname $0);
if $path/.docker/exec.sh nginx "nginx -s ${signal}" ; then
 tail $path/nginx/log/* 
fi
