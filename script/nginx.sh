#!/bin/bash

if [ ! -n "$1" ]; then
  echo 'example: sh nginx.sh 1.10.3'
else
  curl https://nginx.org/download/nginx-$1.tar.gz | shasum -a 256
fi
