#!/bin/bash

docker run --name jenkins \
           -d \
           --restart unless-stopped \
           -p 8080:8080 \
           -v ~/data/jenkins/jenkins_home:/var/jenkins_home \
           -v /var/run/docker.sock:/var/run/docker.sock \
           --link sonarqube \
           134219192027.dkr.ecr.us-east-1.amazonaws.com/reto-tpo/jenkins:latest
