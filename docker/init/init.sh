#!/bin/sh
scriptdir=$(dirname "$0")
docker-compose -f $scriptdir/docker-compose.yml up -d --build &&
docker cp flask-sql-ci-initiator:/root/app ./app

docker-compose -f $scriptdir/docker-compose.yml down