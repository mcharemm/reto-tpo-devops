#!/bin/bash

docker run --name postgres \
           -d \
           --restart unless-stopped \
           -v $PWD/data/postgres:/var/lib/postgresql/data \
           -e POSTGRES_DB=sonar \
           -e POSTGRES_USER=sonar \
           -e POSTGRES_PASSWORD=s0n@r \
           postgres:10
