#!/bin/bash

docker run --name nginx-proxy \
           -d \
           --restart unless-stopped \
           -p 80:80 \
           -p 443:443 \
           -v $PWD/certs:/certs \
           -v $PWD/conf:/etc/nginx/conf.d \
           --link service-clientes \
           nginx
