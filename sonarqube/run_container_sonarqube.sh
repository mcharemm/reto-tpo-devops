#!/bin/bash

docker run --name sonarqube \
           -d \
           --restart unless-stopped \
           -p 9000:9000 \
           -v $PWD/data/sonarqube/conf:/opt/data/sonarqube/conf \
           -v $PWD/data/sonarqube/data:/opt/data/sonarqube/data \
           -v $PWD/data/sonarqube/logs:/opt/data/sonarqube/logs \
           -v $PWD/data/sonarqube/extensions:/opt/data/sonarqube/extensions \
           -e SONARQUBE_JDBC_USERNAME="sonar" \
           -e SONARQUBE_JDBC_PASSWORD="s0n@r" \
           -e SONARQUBE_JDBC_URL="jdbc:postgresql://postgres:5432/sonar" \
           --link postgres \
           sonarqube:6.7
