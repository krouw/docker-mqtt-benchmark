#!/bin/bash
#

TARGETHOST=192.168.86.199

if [[ ! -z $1 ]]; then
  TARGETHOST=$1
fi

mkdir -p `pwd`/results/${TARGETHOST}

docker run -it --name "mqtt-mclient-1" --rm -e TARGETHOST=${TARGETHOST} -v `pwd`/results/${TARGETHOST}:/results mqtt-benchmark:latest
