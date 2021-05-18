#!/usr/bin/env bash

set -e

echo "*** Run Chainlink node ***"

cd $(dirname ${BASH_SOURCE[0]})/..
touch ./external_initiator.env
docker-compose up -d chainlink substrate-adapter1 substrate-adapter2 coingecko-adapter
